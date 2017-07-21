
s = "baablkj12345432133d"
palindrome = ""

(0..s.size-1).each do |i|
    (0..s.size-1).each do |j|
        if s[i..i+j] == s[i..i+j].reverse
		if s[i..i+j].size > palindrome.size
                    palindrome = s[i..i+j]
		end
        end
	if i+j >= s.size
		break
	end
    end
end

p palindrome.size
