require 'socket'
meuStream = TCPSocket.new("127.0.0.1", 20000)
str = meuStream.recv(100)
print str
meuStream.close
