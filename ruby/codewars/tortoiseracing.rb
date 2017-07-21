def catch(a, b, l)
    if a >= b
        return nil
    end
    aspeed = a / (60*60).to_f
    bspeed = b / (60*60).to_f
    
    speeddiff = bspeed - aspeed
    timetocatch = l / speeddiff
 
    htocatch = (timetocatch / (60*60)).floor

    htocatchseconds = htocatch * 60 * 60

    mtocatch = ((timetocatch - htocatchseconds) / 60).floor

    mtocatchseconds = mtocatch * 60

    stocatch = (timetocatch - htocatchseconds - mtocatchseconds).floor

    return [htocatch, mtocatch, stocatch]

end

p catch(720, 850, 70)
p catch(80, 91, 37)



# htocatch = timetocatch / (60 * 60)
# mtocatch = (timetocatch / 60) % 60
# stocatch = timetocatch % 60
#
# mm, ss = t.divmod(60)            #=> [4515, 21]
# hh, mm = mm.divmod(60)           #=> [75, 15]
# dd, hh = hh.divmod(24)           #=> [3, 3]
#
# [(timetocatch/3600%24).floor, (timetocatch/60%60).floor, (timetocatch%60).floor]
