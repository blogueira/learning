



banana = "103 123 4444 99 2000"
banana.split(" ").map { |bah| [bah.split("").map(&:to_i).inject(:+), bah] }.sort.map { |a| a.last }.join(" ")

