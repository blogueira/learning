print "time now: "
print Time.now
print "\nutc: "
print Time.now.utc
print "\nsec: "
print Time.now.utc.sec
print "\nmin: "
print Time.now.utc.min
print "\nhour: "
print Time.now.utc.hour

print "\n"
hora = Time.now.utc + 60*60
print hora.sec

print "\n"

beat = (hora.sec + (hora.min * 60) + (hora.hour * 3600)) / 86.4

print "this is my beat: "
print beat
