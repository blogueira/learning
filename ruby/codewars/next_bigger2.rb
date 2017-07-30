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
  index = [0,0]
  p "fuk me"
  p "original number: " + n.to_s
  ary = n.to_s.split('')
  len = ary.length

  (0...len).reverse_each do |i|
    index[0] = i
    p i==len-1? "pick a numba " + ary[i].to_s : "pick another numba " + ary[i].to_s
    no = ary[i]

    # now what
    p "create subarray :D"
    sub = ary[0...i]
    p sub.map(&:to_i)

    # cool! now loop thru it
    #
    len2 = sub.length
    (0...len2).reverse_each do |y|
      index[1] = y
      p "indexes: " + index.to_s
      if ary[i]>sub[y]
        p ary[i].to_s + " > " + sub[y].to_s
        prov = ary[i]
        ary[i] = sub[y]
        ary[i - sub.size + y] = prov
        break
      else
        p "nope"
      end
    end
    p "RESULT!!111"
    p ary
    break
  end
end

gotohell(29993)
gotohell(25996)
gotohell(12)
gotohell(35)
gotohell(123)
gotohell(12565)

gotohell(12324597677765)

gotohell(12343)

# Cody Gray
# Yvette Colomb
# NathanOliver
# Floern
# Andy
# Alexander O'Mara
# Baum mit Augen
# Rob
# vaultah
# Travis J
