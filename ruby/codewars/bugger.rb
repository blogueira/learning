def persistence(n)
    count = 0
	while n.to_s.size > 1
		n = multiply(n.to_s)
		count+=1
	end
return count
end



def multiply(z)
    (z.scan /\w/).map(&:to_i).inject(:*)
end

p persistence(999)

# def persistence(n)
#   n < 10 ? 0 : 1 + persistence(n.to_s.chars.map(&:to_i).reduce(:*))
# end
