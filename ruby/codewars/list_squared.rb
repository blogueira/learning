def findsomeshit(m, n)
    veryarry = []
    myary = []
    tempry = []
    (m..n).each do |x|
        (1..x).each do |y|
            if x%y == 0
                myary.push(y)
            end
        end
        tempry.push(x)
	blah = myary.map { |d| d ** 2 }
	gah = Math.sqrt(blah.reduce(:+))
	if (gah % 1 == 0)
	    tempry.push(blah.reduce(:+))
            veryarry.push(tempry)
	end
	tempry = []
	myary = []
    end
    return veryarry
end

p findsomeshit(1, 250)
