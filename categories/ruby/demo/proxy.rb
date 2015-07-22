#!/usr/bin/env ruby

require 'socket'
require 'uri'
require 'awesome_print'

class Proxy
  def run port
    begin
      # Start our server to handle connections (will raise things on errors)
      @socket = TCPServer.new port

      p 'TCPServer started'

      # Handle every request in another thread
      loop do
        s = @socket.accept
        Thread.new s, &method(:handle_request)
      end

    # CTRL-C
    rescue Interrupt
      puts 'Got Interrupt..'
    # Ensure that we release the socket on errors
    ensure
      if @socket
        @socket.close
        puts 'Socked closed..'
      end
      puts 'Quitting.'
    end
  end

  def handle_request to_client
    request_line = to_client.readline
    p '-' * 20
    ap request_line
    verb    = request_line[/^\w+/]
    url     = request_line[/^\w+\s+(\S+)/, 1]
    version = request_line[/HTTP\/(1\.\d)\s*$/, 1]
    uri     = URI::parse url

    # Show what got requested
    # puts((" %4s "%verb) + url)

    to_server = TCPSocket.new(uri.host, (uri.port.nil? ? 80 : uri.port))
    to_server.write("#{verb} #{uri.path}?#{uri.query} HTTP/#{version}\r\n")

    content_len = 0

    loop do
      line = to_client.readline
      content_len = $1.to_i if line =~ /^Content-Length:\s+(\d+)\s*$/

      # Strip proxy headers
      if line =~ /^proxy/i
        next
      elsif line.strip.empty?
        to_server.write("Connection: close\r\n\r\n")
        to_server.write(to_client.read(content_len)) if content_len >= 0
        break
      else
        to_server.write(line)
      end
    end

    buff = ''
    loop do
      to_server.read(4048, buff)
      to_client.write(buff)
      break if buff.size < 4048
    end

    # Close the sockets
    to_client.close
    to_server.close
  end
end

# Get parameters and start the server
if ARGV.empty?
  port = 8008
elsif ARGV.size == 1
  port = ARGV[0].to_i
else
  puts 'Usage: proxy.rb [port]'
  exit 1
end

Proxy.new.run port
