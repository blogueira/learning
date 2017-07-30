# def list_swaps(ary)
#     swaps = []
#     ary.each_with_index do |a, ai|
#         ary[ai..ary.size].each_with_index do |b, bi|
#             if a > b
#                 swaps.push(ai, bi)
#             end
#         end
#     end
#     p swaps
# end

def gotohell(n)
  
  # set a few things first
  p "fuk me"
  p "original number: " + n.to_s
  ar = n.to_s.split('').map(&:to_i)

  # declare our two indexes
  i = ar.size
  o = ar.size
  limit = 1
  breakout = false
  # now what, stuck?
  
  ar.size.times do
    ar.to_enum.with_index.reverse_each do |x, index1|
  
      p "index1 = " + ((index1 - ar.size) * -1).to_s
      p "reality check for first array: " + ar[index1].to_s
      p "reality check for index1: " + index1.to_s


        if breakout
          breakout = false
          break
        end
    
      ar[0,index1].to_enum.with_index.reverse_each do |y, index2|
   
        # remember this
        range = (index2 - ar.size) * -1
        if range > limit
          limit+=1
          breakout = true
        end

        if breakout
          break
        end
        # dont forget that
      
        # here's your array
        # p ar[index1,ar.size][index2]

        # NOW GO FIND SOMEONE TO SWAP YOURSELF WITH

        # p (ar[index1]>ar[index1,ar.size][index2])? "FOUND ITS" : "nope"
        p "x = " + x.to_s
        p "y = " + y.to_s






      end
    end
#    p ar[index1]
  end
    




end

# gotohell(29993)
# gotohell(25996)
# gotohell(12)
# gotohell(35)
# gotohell(123)
# gotohell(12565)

# gotohell(12324597677765)

gotohell(12343)
