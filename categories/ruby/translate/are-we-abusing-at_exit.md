## [Are we abusing at_exit?](http://blog.arkency.com/2013/06/are-we-abusing-at-exit/)

如果你对 `ruby` 很感兴趣，你可能已经知道了 [Kernel#at_exit](http://ruby-doc.org/core-2.0.0/Kernel.html#method-i-at_exit)。你可能经常用它，解决了你非常多的问题。甚至更多。

### 基础

我们先来了解下 `at_exit` 的基本用法。如果你已经很熟悉了，可直接跳过。

```ruby
puts "start"
at_exit do
  puts "inside at_exit"
end
puts "end"
```

上面脚本的输出结果是:

```ruby
start
end
inside at_exit
```

来，我们继续。

### 中级

##### `at_exit` 和 exit codes(退出码)

[在ruby里面，你有多种方法可以退出执行脚本](http://www.sitepoint.com/exit-exit-abort-raise-get-me-outta-here/)。但最重要的是其他程序的退出码。`at_exit` 可以改变它。

```ruby
# exiting.rb
puts "start"
at_exit do
  puts "inside at_exit"
  exit 7
end
puts "end"
exit 0
```

我们来看下运行结果:

```ruby
$ ruby exiting.rb; echo $?
start
end
inside at_exit
7
```

但退出码也可能悄悄的改变:

```ruby
at_exit do
  raise "surprise, exception happend inside at_exit"
end
```

输出结果:

```ruby
$ ruby exiting.rb; echo $?
exiting.rb:2:in `block in <main>': surprise, exception happend inside at_exit (RuntimeError)
1
```

但如果有一个 `catch`， 退出码将不会改变:

```ruby
at_exit do
  raise "surprise, exception happend inside at_exit"
end
exit 0
```

输出结果:

```ruby
$ ruby exiting.rb; echo $?
exiting.rb:2:in `block in <main>': surprise, exception happend inside at_exit (RuntimeError)
0
```

等等，接着看。

##### `at_exit` 处理顺序

[文档](http://ruby-doc.org/core-2.0.0/Kernel.html#method-i-at_exit)有说， 如果注册了多个处理程序， 他们将反序执行。

那么，你能预测以下代码的执行结果吗?

```ruby
puts "start"

at_exit do
  puts "start of first at_exit"
  at_exit { puts "nested inside first at_exit" }
  at_exit { puts "another one nested inside first at_exit" }
  puts "end of first at_exit"
end

at_exit do
  puts "start of second at_exit"
  at_exit { puts "nested inside second at_exit" }
  at_exit { puts "another one nested inside second at_exit" }
  puts "end of second at_exit"
end

puts "end"
```

输出结果为:

```ruby
start
end
start of second at_exit
end of second at_exit
another one nested inside second at_exit
nested inside second at_exit
start of first at_exit
end of first at_exit
another one nested inside first at_exit
nested inside first at_exit
```

所以，它的行为更像是基于堆栈的。这里有几个相关的bug列表:

* http://bugs.ruby-lang.org/issues/5197
* https://github.com/seattlerb/minitest/issues/25

现在我们来看看 `minitest`。

##### minitest

使用 `at_exit` 中最有名的例子就是 `minitest` 了。
注意: 这里使用的是 `minitest-5.0.5`

先来看一个简单的 `minitest` 例子。

```ruby
# test.rb
gem "minitest"
require "minitest/autorun"

class TestStruct < Minitest::Test
  def test_struct
    assert_equal "chillout", Struct.new(:name).new("chillout").name
  end
end
```

你可以通过 `ruby test.rb` 来运行测试。很简单。但有一个问题: `minitest` 是如何运行的呢？你可能已经知道了答案。

* it uses [at_exit hook to trigger test running](https://github.com/seattlerb/minitest/blob/f771b23367dc698586f1e794eae83bcb905fa0d8/lib/minitest.rb#L36)
* and [inherited hook to collect tests to run](https://github.com/seattlerb/minitest/blob/f771b23367dc698586f1e794eae83bcb905fa0d8/lib/minitest.rb#L233)

你或许已经发现了其实 [rspec也使用 at_exit](https://github.com/rspec/rspec-core/blob/dee12fcb024d92505625f859462ece5aeb28f04a/lib/rspec/core/runner.rb#L8)

在minitest中 `at_exit` 的使用有一点复杂。

```ruby
# Registers Minitest to run at process exit
def self.autorun
  at_exit {
    next if $! and not $!.kind_of? SystemExit

    exit_code = nil

    at_exit {
      @@after_run.reverse_each(&:call)
      exit exit_code || false
    }

    exit_code = Minitest.run ARGV
  } unless @@installed_at_exit
  @@installed_at_exit = true
end

# A simple hook allowing you to run a block of code after everything
# is done running. Eg:
#
#   Minitest.after_run { p $debugging_info }
def self.after_run &block
  @@after_run << block
end
```

未完待续......
