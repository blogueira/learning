def flap_display(lines, rotors)
$ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ ?!@#&()|<>.:=-+*/0123456789"
  # $ALPHABET.split('')
  rotor = $ALPHABET.split('')
line_of_lines = []
  lines.each do |l|

	  line_result = []
	  index = []
	  split_line = l.split('')
#	  p split_line


	  split_line.each do |id|
	#	  p rotor.index(id)
		  index.push(rotor.index(id)) 
	  end
        rotated = rotor
#	p "fuk me rotors"
#	p rotors
	rotors.each do |rot|
		rot.each_with_index do |r, i|
		
			 line_result.push(rotated.rotate!(r)[index[i]])
		end	
	end

	line_of_lines.push(line_result.join(" "))
  end
return line_of_lines
end

p flap_display(["CAT"],[[1, 13, 27]])

p flap_display(["IN SPACE NOBODY...  "],[[48, 47, 0, 21, 38, 120, 48, 15, 41, 11, 43, 19, 47, 3, 17, 2, 41, 50, 23, 16]])

p flap_display(["CODE"],[[20,20,28,0]])
