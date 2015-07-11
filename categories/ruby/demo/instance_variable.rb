class A
  attr_accessor :a
end

class B < A
  def b
    p a
  end
end

A.new.a = 5
B.new.b