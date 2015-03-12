require 'socket'

host = 'stackoverflow.com'
port = 80

s = TCPSocket.open host, port
s.puts "GET / HTTP/1.1\r\n"
s.puts "\r\n"

while line = s.gets
  puts line.chop
end

s.close
