def gotohell(n)
  p "numba: " + n.to_s  
  ar = n.to_s.split('').map(&:to_i)
  def change_it(ar, i, j)
      pr = ar[j]
      ar[j] = ar[i]
      ar[i] = pr
  end

def check_min(argh)
p argh 
end

 endit = false
 o = ar.size
 ar.size.downto(0) do |i|
  if ar[i] == ar[i,o].max
 #  p "yes"
  else
  # p "no, then do some shit"
    
    z = ar[i,o].sort
   # p z

    z.size.times do |n|
      if z[n] > ar[i]
    #    p z[n]
     #   p ar[i]
        me_index = nil
        i_index = nil
        ar.to_enum.with_index.reverse_each do |x|
          if z[n] == x[0]
            change_it(ar, i, x[1])
            me_index = x[1]
            i_index = i
            
            p "changing this:"
            p "index i: " + i.to_s + ", ar[i] = " + ar[i].to_s
            p "index x[1]: " + x[1].to_s + ", ar[x[1]] = " + ar[x[1]].to_s


            p "x[0] = " + x[0].to_s
            p "x[1] = " + x[1].to_s
            p "x = " + x.to_s
            p "i = " + i.to_s

            break
          end
        end
        if me_index > 2
#          p "x[1] is larger than 2, should check for min"
          ar[i_index+1, me_index] = ar[i_index+1, me_index].reverse
          return ar.join.to_i
        else
          return ar.join.to_i
        end
      end
    end
  end
 end

end

#gotohell(29993)
#gotohell(25996)
p gotohell(12)
#gotohell(35)
p gotohell(689)
p gotohell(12565)
p gotohell(12343)
p gotohell(1243)
p gotohell(414)
p gotohell(144)
#gotohell(12343)
