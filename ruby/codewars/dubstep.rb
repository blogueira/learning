def song_decoder(s)
    return s.split("WUB").reject(&:empty?).join(" ")
end

# song_decoder(song)
#     song.gsub(/(WUB)+/, ' ').strip
# end

# song_decoder(song)
#     song.gsub('WUB', ' ').strip.squeeze(' ')
# end
