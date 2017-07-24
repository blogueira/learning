def narcissistic?( value )
    power = value.to_s.length
    s = value.to_s
    ary = s.split('')
    result = 0
    ary.each do |s|
        result += s.to_i ** power
    end
    if result == value
	    return true
    end
    return false
end

p narcissistic?(12)
p narcissistic?(153)
p narcissistic?(1634)
