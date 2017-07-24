def zeros(number)
    kmax = findlog(number,5).floor
    # puts "kmax = " + kmax.to_s
    summation(number, kmax)
end

def summation(n, k)
    result = 0
    (1..k).each do |x|
	    lol = (n.to_f / (5**x)).floor
        result += lol
    end
    return result
end

def findlog(no, base)
    counter = 0
    x = base
    loop do
        x *= base
        counter+=1
        break if x >= no
    end
return counter
end

p 28.downto(1).inject(:*)
p zeros(28)
p 30.downto(1).inject(:*)
p zeros(30)
p 36.downto(1).inject(:*)
p zeros(36)
