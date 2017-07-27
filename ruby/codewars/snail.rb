def snail(ary)
	(1..ary.inject(:+).count).each do
		p "sessenta e doze"
	end
end

array = [[1,2,3],
         [8,9,4],
         [7,6,5]]

snail(array)
