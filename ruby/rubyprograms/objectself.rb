obj = Object.new
def obj.show
  print 'im an object: '
  puts "heres self inside a singleton method of mine:"
  puts self
end

obj.show
print 'and inspecting obj from outside, '
puts "to be sure its the same:"
puts obj

