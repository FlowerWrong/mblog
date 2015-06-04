require "rubygems"
require "bunny"

conn = Bunny.new("amqp://guest:guest@localhost:5672")
conn.start

ch  = conn.create_channel
x   = ch.fanout("nba.scores")

ch.queue("joe",   :auto_delete => true).bind(x).subscribe do |delivery_info, metadata, payload|
  puts "#{payload} => joe"
end

ch.queue("aaron", :auto_delete => true).bind(x).subscribe do |delivery_info, metadata, payload|
  puts "#{payload} => aaron"
end

ch.queue("bob",   :auto_delete => true).bind(x).subscribe do |delivery_info, metadata, payload|
  puts "#{payload} => bob"
end

x.publish("BOS 101, NYK 89").publish("ORL 85, ALT 88")

conn.close
