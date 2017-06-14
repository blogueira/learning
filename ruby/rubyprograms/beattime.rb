# our very nice, beautifuly written nothing

def delete(n)
  n.times do
    print "\b"
  end
end

last_beat_length = 0
last_beat = 0

loop do
  h = Time.now.utc + 60*60
  beat = (h.sec + (h.min * 60) + (h.hour * 3600)) / 86.4
  # puts "beat length is: " + beat.to_i.to_s.length.to_s
  if beat != last_beat
    delete(last_beat_length)
    print(beat.to_i)
    last_beat_length = beat.to_i.to_s.length
    last_beat = beat
  end
  sleep 1
end
=begin
(but using two-character indentation will make you friends in the community if you plan on distributing your code.)
=end
