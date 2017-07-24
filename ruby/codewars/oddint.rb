def find_it(seq)
    seq.each do |x|
        if seq.count(x) % 2 > 0
            return x
        end
    end
end


# def find_it(seq)
#   seq.detect { |n| seq.count(n).odd? }
# end


# def find_it(seq)
#   seq.reduce(:^)
# end
