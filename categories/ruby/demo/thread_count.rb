x = 0

10.times.map do |i|
  Thread.new do
    p "before (#{i}): #{x}"
    x += 1
    p "after (#{i}): #{x}"
  end
end.each(&:join)

p "\ntotal #{x}"
