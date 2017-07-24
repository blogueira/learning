missing = ['O', 'Q', 'R', 'S']

missing.each_with_index do |l, i|
	if i == missing.size-1
		break
	end
unless l.next == missing[i+1]
	p l.next
end
end

# ((arr.first..arr.last).to_a - arr).first
