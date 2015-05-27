
require 'benchmark'

array = (1..1000000).map { rand }

Benchmark.bmbm do |x|
  x.report('sort!') { array.dup.sort! }
  x.report('sort') { array.dup.sort }
end
