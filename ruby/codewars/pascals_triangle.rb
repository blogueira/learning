# vrja
# pra cada i de um array i = [1]
# a gente tenta fazer o seguinte
# ...
# ...
# ...
# cria um novosarray
# novosarray = [1]
# agora tenta somar  i com i+1 se ele existir
# existe i+1?
# nope
# termina o array com [1]
# novosarray push 1
# novosarray
# [1,1]
# blz
# agora vamo ve
# ...
# ...
# ...
# cria mais um arrei
# maisuarrei = [1]
# agora tenta somar i com i+1 se ele existir
# existe i+1?
# sin
# maisumarrei.push(novosarray[i]+novosarray[i+1])
# maisumarrei
# [1, 2]
# eagoras?
# existe i+1?
# nope
# termina o array com [1]
# maisumarrei push 1
# maisumarrei
# [1, 2, 1]
# blz

ar = [1]

def fukme(ar)
  # ar ja vem todo titubeando
  resultarei = [1]
  ar.each_with_index do |fok, i|
    if ar[i+1] # da pra somar
      resultarei.push(ar[i] + ar[i+1])
    else # no tiene
      resultarei.push(1)
    end
  end
  return resultarei
end

# eagora, comofas
# cada nivel eh um call ao fukme
# hum, isso esplica muita coisa
# vamos ver
# ...
# ...
# ...
# temos n
# para cada n
# chamamos o fukme
# hola q tal?

def doing_something_wrong(n)
	again = [1]
	n.times do
	  again = fukme(again)
	end
	return again
#  p again
end

# eahora?
#

def pascals_triangle(n)
astupidarray = []
	n.times do |f|
		astupidarray.push(doing_something_wrong(f))
	end
	return astupidarray.flatten
end


pascals_triangle(5)





