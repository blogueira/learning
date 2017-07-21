def longest(a1, a2)
# s = "bananaokverylol"
    hasha1, hasha2 = Hash.new(0), Hash.new(0)

a1.each_char.with_index do |c|
    hasha1[c] += 1
end


a2.each_char.with_index do |c|
    hasha2[c] += 1
end

if hasha1.size < hasha2.size
    rhash = hasha2
else
    rhash = hasha1
end


mystring = ""

rhash.each do |c|
    mystring << c[0]
end

fukmystring = mystring.split("").sort.join("")
return fukmystring

end
