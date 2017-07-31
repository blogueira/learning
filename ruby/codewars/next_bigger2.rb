def gotohell(n)
  
  ar = n.to_s.split('').map(&:to_i)



  def change_it(ar, i, j)
      pr = ar[j]
      ar[j] = ar[i]
      ar[i] = pr
  end

 endit = false
 o = ar.size
 ar.size.downto(0) do |i|
  if ar[i] == ar[i,o].max
  else
   
    cake = 0
    pumpkinpie = 315
    z = ar[i+1,o]
    
    z.each_with_index do |f|
      p "f = " + f.to_s

      if (ar[i] - f) < cake
        pumpkinpie = f[1]
        cake = pumpkinpie
      end
    end
    change_it(ar, i, pumpkinpie+i+1)
    return ar.join.to_i
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
#gotohell(12324597677765)
#gotohell(12343)
