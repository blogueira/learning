def bouncingBall(h, bounce, window)
    count = 1
    x = h.to_f
    if h <= 0
	    return -1
    end
    if bounce <= 0 || bounce >= 1
	    return -1
    end
    if window >= h
	    return -1
    end

    while x > window
	    x = x.to_f*bounce
	    p x
	    count += 1
    end
    return count
end


p bouncingBall(3, 0.66, 1.5)
p bouncingBall(3, 1, 1.5)
p bouncingBall(30, 0.66, 1.5)
