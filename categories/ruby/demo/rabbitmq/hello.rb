#!/usr/bin/env ruby
# encoding: utf-8

require "rubygems"
require "bunny"

conn = Bunny.new
conn.start

ch = conn.create_channel
q  = ch.queue("bunny.examples.hello_world", :auto_delete => true)
x  = ch.default_exchange

# 订阅
q.subscribe do |delivery_info, metadata, payload|
  puts "Received #{payload}"
end

# 发布
x.publish("Hello!", :routing_key => q.name)

sleep 1.0
conn.close
