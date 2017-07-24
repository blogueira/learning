def fuk(n)
if n < 0
	return n.to_s + "<0"
end
zargh = ""
(0..n).each do |i|
zargh << i.to_s
if i < n
zargh << "+"
end
end
zargh << "=" + (0..n).inject(:+).to_s
p zargh
end

fuk(0)
