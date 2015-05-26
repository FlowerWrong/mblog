x, mutex = 0, Mutex.new

10.times.map do |i|
  Thread.new do
    mutex.synchronize do
      puts "before (#{ i }): #{ x }"
      x += 1
      puts "after (#{ i }): #{ x }"
    end
  end
end.each(&:join)

puts "\ntotal: #{ x }"
