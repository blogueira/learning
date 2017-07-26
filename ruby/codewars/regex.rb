def myregex(str)
p /(?=.*[a-z]{1})(?=.*[0-9]{1})(?=.*[A-Z]{1})/ =~ str
end

myregex("Ag2")
