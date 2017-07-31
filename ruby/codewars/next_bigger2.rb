def change_it(ar, i, j)
  # p "this is ar: " + ar.to_s
  # p "this is i: " + ar[i].to_s
  # p "this is j: " + j.to_s

  ar.to_enum.with_index.reverse_each do |k|
  # p "k[0]: " + k[0].to_s
  # p "k[1]: " + k[1].to_s
  # p "k: " + k.to_s
    if k[0] == j
      # p "k == j!"
      pr = j
      ar[k[1]] = ar[i]
      ar[i] = pr
      # p "this is new ar: " + ar.to_s
      return [ar, k[1]]
    end
  end  
end

def gotohell(n)
  very_index = 1013;
  # p "numba: " + n.to_s  
  ar = n.to_s.split('').map(&:to_i)
  blah = ar
  endit = false
  o = ar.size
  ar.size.downto(0) do |i|
    if ar[i] == ar[i,o].max
      # p "yes"
    else
      # p "no, then do some shit"
      z = ar[i,o].sort
      gah = z.select { |v| v > ar[i] }
      # p "gah is: " + gah.to_s
      if gah.size > 1
        gah.sort!
        # p "this is the corret btich: " + gah[0].to_s
        p "where does this"
      end
      very_index = change_it(ar, i, gah[0])[1]
      # p ar
      # p "see? now fuk yo"
      # now get the final numbas and kill this shit
      # p "fuk me fuk me fuk me"
      # p ar[i, ar.size]
      p "picture a gomen"
      if ar.size > 2
        p "FUUUUUUUUUUK"
        # p "sort shit and go"
        # p ar
        # p ar[i+1, ar.size]
        zargh = ar[i+1, ar.size].sort
        lol = ar
        lol[i+1, ar.size] = zargh
    
        if ar != lol
          ar = lol
        end
      end
      p "fukin size: " + ar.size.to_s
        return ar.join.to_i
      break 
    end
  end

      #if ar.size < blah.size
        return -1
      #end
end

#gotohell(29993)
#gotohell(25996)
p gotohell(12)
#gotohell(35)
p gotohell(689)
# p gotohell(12565)
# p gotohell(12343)
# p gotohell(1243)
p gotohell(414)
p gotohell(144)
#gotohell(12343)
p gotohell(128391890)
p gotohell(9876543210)
p gotohell(9999999999)
