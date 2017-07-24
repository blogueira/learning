def iq_test(numbers)
    arr = numbers.split(' ').map(&:to_i)
    if (arr.count { |x| x.even? }) > 1
        # puts "goat"
        arr.each do |y|
            if y.odd?
                return arr.index(y)+1
            end
        end
    else
        # puts "bush"
        arr.each do |y|
            if y.even?
                return arr.index(y)+1
            end
        end
    end
end

# def iq_test(numbers)
#   nums = numbers.split.map(&:to_i).map(&:even?)
#   nums.count(true) > 1 ? nums.index(false) + 1 : nums.index(true) + 1
# end
