# https://www.codewars.com/kata/54d512e62a5e54c96200019e/train/ruby

def primeFactors(n)
myarr = []
# myarr.push(findDivisor(n))

z = n
while z != 1
    blah = findDivisor(z)
    z = z/blah
    myarr.push(blah)
end
p myarr
p n

#p myarr.count(2)
#myarr.delete(2)
#p myarr


end



def findDivisor(z)
    (2..z).each do |x|
        if prime(x)
		puts "fok" + x.to_s
            if z%x == 0	    
	        return x
	    end
	end
    end
    return 1
end



def prime(n)
    if ((2..(n/2)).count { |x| n % x == 0 } > 1)
        return false
    else
        return true
    end
end

primeFactors(1170)
