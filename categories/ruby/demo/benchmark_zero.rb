require 'benchmark/ips'

Benchmark.ips do |x|
  x.report("0.zero?") { 0.zero? }
  x.report("0 == 0") { 0 == 0 }

  x.report("1.zero?") { 1.zero? }
  x.report("1 == 0") { 1 == 0 }

  x.compare!
end
