fiber1 = Fiber.new do
  puts "In Fiber 1"
  Fiber.yield
end

fiber2 = Fiber.new do
  puts "In Fiber 2"
  fiber1.transfer
  puts "Never see this message"
end

fiber3 = Fiber.new do
  puts "In Fiber 3"
end

fiber2.resume
fiber3.resume
