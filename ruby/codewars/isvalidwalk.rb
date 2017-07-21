def isValidWalk(walk)
    count = { "n" => 0, "s" => 0, "e" => 0, "w" => 0 }
        for c in walk
        count[c] += 1
    end
    if count["n"] == count["s"] && count["w"] == count["e"]
        if count["n"] + count["s"] + count["w"] + count["e"] == 10
            return true
	end
    end
return false
end

# def isValidWalk(walk)
#     walk.count('w') == walk.count('e') and
#     walk.count('n') == walk.count('s') and
#     walk.count == 10
# end
