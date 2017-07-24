def trailingzeroes(n)

	kmax = Math.log(n,5).floor

	mystuffs = summation(n, kmax)

	return mystuffs
end


def summation(n, k)
result = 0

(0..n-1).each do |x|

	lol = (n / (5**(k+x))).floor
	
	result += lol
end
return result
end

# p summation(4, 1, 2)

blah = 23
p trailingzeroes(blah)
p blah.downto(1).inject(:*)


