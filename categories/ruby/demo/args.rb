
def args1(arg1, *args)
  p arg1
  p args.class
  p args
end

def args2(arg1, **args)
  p arg1
  p args.class
  p args
end

args1(1, 2, 3, 5)

args2(1, a: 1, b: 2, c:3)
