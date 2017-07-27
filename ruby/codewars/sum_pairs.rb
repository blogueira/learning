https://www.codewars.com/kata/sum-of-pairs

def find_pairs(ary, i)
    pairs = []
    ary.each_with_index do |x, ind|
        if ary[ind+1, ary.size].include? (i - x)
		pairs.push([x, ary.index(x), i - x, ary[ind+1, ary.size].index(i-x)])
	end
    end
    return pairs
end

def sum_pairs(ary, i)
    pairs = find_pairs(ary, i)
    p pairs
end




# def sum_pairs(ary, i)
#    ary.each_with_index do |x, ind|
#        if ary[ind+1, ary.size].include? (i - x)
#            return x, i - x
#        end
#    end
#    return nil
# end

sum_pairs([11, 3, 7, 5], 10)
sum_pairs([4, 3, 2, 3, 4], 6)
sum_pairs([0, 0, -2, 3], 2)
sum_pairs([5, 9, 13, -3], 10)
sum_pairs([10, 5, 2, 3, 7, 5], 10)
