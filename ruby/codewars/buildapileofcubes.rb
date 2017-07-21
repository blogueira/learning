def find_nb(m)
	inf = 1.0 / 0.0
	number = 0
	othernumber = 0
	counter = -1
	(0..inf).each do |n|
	    number += n**3
	    othernumber = n
	    counter += 1
	    if number >= m
	        break
	    end
	end

if number == m
    return counter
    else
    return -1
end
end

p find_nb(4183059834009)
p find_nb(1071225)
