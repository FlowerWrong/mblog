## Class eval and instance eval

```ruby
class A
  # defs here go to A
  puts self  # => A
  class << self
     # defs here go to A's eigenclass
     # 类的单件方法
  end
end

A.class_eval do
  # defs here go to A
  # 对象方法
end

A.instance_eval do
  # defs here go to A's eigenclass
  # 类方法
end

s = "Hello World"

class << s
  # defs here go to s's eigenclass
  # 对象的单件方法
end
```
