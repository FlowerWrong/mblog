## Module function

```ruby
module D
  def say_hello_of_d
    puts "D say hello"
  end
  extend self
end

class C
  include D
  extend D
end

D.say_hello_of_d
C.say_hello_of_d
C.new.say_hello_of_d
```
