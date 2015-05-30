#!/usr/bin/env ruby
#
# Connect to a MQTT server, subscribe to all topics
# and then loop, displaying any messages received.
#

require 'rubygems'
require 'mqtt'

MQTT::Client.connect('localhost') do |client|
  # If you pass a block to the get method, then it will loop
  client.get('demo') do |topic, message|
    puts "#{topic}: #{message}"
  end
end
