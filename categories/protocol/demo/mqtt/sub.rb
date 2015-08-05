#!/usr/bin/env ruby
#
# Connect to a MQTT server, subscribe to all topics
# and then loop, displaying any messages received.
#

require 'rubygems'
require 'mqtt'

MQTT::Client.connect('mqtt://yangkang:123456789@localhost', will_qos: 1, will_retain: true) do |client|
  p client.will_qos
  p client.will_retain
  # If you pass a block to the get method, then it will loop
  client.get('demo') do |topic, message|
    puts "#{topic}: #{message}"
  end
end
