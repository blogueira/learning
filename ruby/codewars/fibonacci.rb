def create_fib(i)
    infinity = 1/0.0
    fibs = []
    x = 1
    oldx = 1
    newx = 0
    (0..infinity).each do
        fibs.push(x)
        newx = oldx + x
        oldx = x
        x = newx
	if x > i
	    break
	end
    end
    return fibs
end

# p create_fib(500)

def product(x)
    lol = create_fib(x)
    lol.each_with_index do |z, i|
        if x%z == 0
	    if (lol[i+1] * z) == x
                print "#{z}, #{lol[i+1]}, true"
		break
	    end
	    else if lol[i+1] * z > x
		# print "nope"
                print "#{z}, #{lol[i+1]}, false"
		break
	    end
	end
    end
end

# def productFib(prod)
#   a, b = [0, 1]
#   while prod > a * b
#     a, b = [b, a + b]
#   end
#   [a, b, prod == a * b]
# end
