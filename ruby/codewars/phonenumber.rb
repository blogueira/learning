def createPhoneNumber(arr)
	blah = ""
(arr).each_with_index do |n, i|
if i == 0
blah << "("
end
if i == 3
blah << ") "
end
if i == 6
blah << "-"
end
blah << n.to_s
end
return blah
end

p createPhoneNumber([0, 1, 1, 9, 8, 1, 8, 4, 9, 7, 3, 3])

# def createPhoneNumber(array)
#     '(%d%d%d) %d%d%d-%d%d%d%d' % array
# end
