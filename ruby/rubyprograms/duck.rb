s = 'i luv the ruby'
print s.class

v = 123
print v.class

d = $:
print d.class

print 'ok now this:'

puts 'i am in class = ' + self.class.to_s
puts 'im an object = ' + self.to_s
print 'the obj methods r = '
puts self.private_methods.sort

puts 'i like pigeons, precisely ' + rand.to_s + ' times - curious'

puts '\n\n he insists'.length.to_s + ' is the length of \'\\n\\n he insists\''

puts "\nnow:"

5.times { puts "more on blocks later\n" }
