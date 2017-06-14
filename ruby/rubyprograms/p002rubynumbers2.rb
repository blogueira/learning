def g *args # splat accepts one or more arguments in the form of an array
  args
end

def f arg
  arg
end

x,y,z = [true, 'two', false] # parallel assignment

if a = f(x) and b = f(y) and c = f(z) then
  d = g(a,b,c)
end

p d
