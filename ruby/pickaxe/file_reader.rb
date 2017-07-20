f = File.open("testfile")
f.each.with_index do |line, index|
    puts "The line #{index} is: #{line}"
end
f.close
