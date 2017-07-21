def find_even_index(arr)

    metade1 = 0
    metade2 = 0
    index = -1

    (0..arr.size-1).each do |i|
        metade1 = arr[0..i-1].inject(:+)
        metade2 = arr[i+1..arr.size-1].inject(:+)
        
#	puts "metade1: " + metade1.to_s
#	puts "metade2: " + metade2.to_s

	if i == arr.size-1
		metade2 = 0
	end

	if i == 0
		metade1 = 0
	end
	
	if metade1 == metade2
		index = i
		break
	end
    end
    return index
end

p find_even_index([1,2,3,4,3,2,1])
p find_even_index([1,100,50,-51,1,1])
p find_even_index([1,2,3,4,5,6])
p find_even_index([20,10,30,10,10,15,35])
p find_even_index([20,10,-80,10,10,15,35])
p find_even_index([10,-80,10,10,15,35,20])
p find_even_index(Array(1..100))
p find_even_index([0,0,0,0,0])
p find_even_index([-1,-2,-3,-4,-3,-2,-1])
p find_even_index(Array(-100..-1))
