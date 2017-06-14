# our very nice, beautifuly written (copied) time server

require 'socket'
ourserver = TCPServer.new('localhost', 20000)
loop do
  Thread.start(ourserver.accept) do |s|
    print(s, " has arrived.\n")
    h = Time.now.utc + 60*60
    beat = (h.sec + (h.min * 60) + (h.hour * 3600)) / 86.4
    s.write(beat) # change to our beautifuly composed method
    print(s, " is gone... now it's dark.\n")
    s.close
  end
end
=begin
(but using two-character indentation will make you friends in the community if you plan on distributing your code.)
=end

# http://ruby-doc.org/core-2.4.1/
