require 'benchmark/ips'

def match(controller)
  if controller
    if m = controller.match(/\A\/(?<controller_without_leading_slash>.*)/)
      m[:controller_without_leading_slash]
    else
      controller
    end
  end
end

def start_with(controller)
  if controller
    if controller.start_with?('/'.freeze)
      controller[1..-1]
    else
      controller
    end
  end
end

Benchmark.ips do |x|
  x.report("match") { match("no_leading_slash") }
  x.report("start_with") { start_with("no_leading_slash") }

  x.compare!
end

Benchmark.ips do |x|
  x.report("match") { match("/a_leading_slash") }
  x.report("start_with") { start_with("/a_leading_slash") }

  x.compare!
end
