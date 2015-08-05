#!/usr/bin/env ruby
#
# Connect to a MQTT server, send message and disconnect again.
#

require 'rubygems'
require 'mqtt'

MQTT::Client.connect('mqtt://yangkang:123456789@localhost', will_qos: 1, will_retain: true) do |client|
  p client.will_qos
  p client.will_retain
  p "sent msg The time is: #{Time.now} to topic demo"
  client.publish('demo', "The time is: #{Time.now}", true, 1)  # qos 1
end
