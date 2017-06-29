require_relative "words_from_string.rb"
require_relative "count_frequency.rb"

raw_text = %{I dunno - it's a very long text because there's no other way to test
  this program without writing tons of text. But it's ok, really, it doesn't really
  matter, because only you and me are going to read this. You hear me? This is top
  secret text! And it's really safe here.}

word_list = words_from_string(raw_text)
counts = count_frequency(word_list)
sorted = counts.sort_by {|word, count| count}
top_five = sorted.last(5)

for i in 0...5 # this is ugly code, read on
  word = top_five[i][0]
  count = top_five[i][1]
  puts "#{word}: #{count}"
end
