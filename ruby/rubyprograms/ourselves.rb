class S
  puts 'just started class S'
  puts self
  module M
    puts 'nested module S::M'
    puts self
  end
  puts 'back in outer level of S'
  puts self
end

puts "\njump a few lines, and start again!\n"

class S
  def m
    puts 'class S method m:'
    puts self
  end
end
s = S.new
s.m


