require 'rubygems'
require 'eventmachine'
require 'em-http'
require 'pp'

url = 'http://movie.douban.com/j/cinemas/?city_id=118281&limit=10'
EventMachine.run {
  http = EventMachine::HttpRequest.new(url).get head: {'cookie' => {'bid' => 'VavYxjIPGEE'}}

  #1.upto(1000).each do |i|
    #p i
    http.errback { p 'error'; p http.error; EventMachine.stop }
    http.callback {
      p http.response
    }
  #end
  EventMachine.stop
}
