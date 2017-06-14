puts self
puts "\ni love the ruby\n"

def hello
  'i love the ruby'
end

# arg!111
def hello2(x)
  'hello ' + x
end

# arg2!11
def hello3 name
  'hello ' + name
end


puts hello2 'blogueira'
puts hello3 'sua gorda'

def eu_sou x='burra'
  x
end

puts('eu sou ' + eu_sou('inteligentissima'))
