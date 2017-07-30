# def next_bigger(n)
# if n.to_s.size == 1
# return -1
# end
# zargh = n.to_s.split('').permutation.to_a
# lol = []
# zargh.each do |x|
# lol.push(x.join.to_i)
# lol.uniq!
# if lol.size == 0
# return -1
# end
# end
# if lol[0] == lol[1]
# return -1
# end
# return lol[1]
# end

# CODE TOO SLOW!

