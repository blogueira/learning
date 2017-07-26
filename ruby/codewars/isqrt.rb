def isqrt(square)  
    # Check our input  
    square = square.to_i # force integer  
    return 0 if square == 0 # quick exit  
    raise RangeError if square < 0  
    # Actual computation  
    n = iter(1, square)  
    n1 = iter(n, square)  
    n1, n = iter(n1, square), n1 until n1 >= n - 1  
    n1 = n1 - 1 until n1*n1 <= square  
    return n1 
end  
def iter(n, square) (n+(square/n))/2 end

p isqrt(194)
p Math.sqrt(194)
