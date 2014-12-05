
def method_with_block
  yield
end
method_with_block do
  puts 'yield called me'
end

def method_with_block_parameter
  n = 'windy'
  yield(n)
end
method_with_block_parameter do |i| puts 'yield(n) called me' + i end


double = lambda {|n| puts n * 2}

double.call(10) # => 20
puts double.lambda?

def meth(&proc)
  res = proc.call
  "Proc called returns #{res}"
end

def f1
  yield
end

def f2(&p)
  p.call
end

def f3(p)
  p.call
end

f1 {puts 'f1'}
f2 {puts 'f2'}
f3(proc {puts 'proc f3'})
f3(Proc.new {puts 'Proc.new f3'})
f3(lambda {puts 'lambda f3'})




def f4(n, p)
  x = 5
  puts n * p.call(x)
end

f4(2, lambda {|x| 4+x;})
