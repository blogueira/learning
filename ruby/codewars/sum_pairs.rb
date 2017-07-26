def sum_pairs(ary, i)
    ary.each_with_index do |x, ind|
        if ary[ind+1, ary.size].include? (i - x)
            return x, i - x
        end
    end
    return nil
end

p sum_pairs([11, 3, 7, 5], 10)
p sum_pairs([4, 3, 2, 3, 4], 6)
p sum_pairs([0, 0, -2, 3], 2)
p sum_pairs([5, 9, 13, -3], 10)
p sum_pairs([10, 5, 2, 3, 7, 5], 10)
