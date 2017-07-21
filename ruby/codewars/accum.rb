# http://www.codewars.com/kata/5667e8f4e3f572a8f2000039/train/ruby
# s.chars.each_with_index.map { |c, i| c.upcase + c.downcase * i }.join('-')

def accum(s)
    st = ""
    result = []
    s.each_char.each_with_index { |c, i| result << [c, i+1] }
    result.each do |z|
        f = ""
        z[1].times { f << z[0] }
        st << f.capitalize + "-"
    end
p st[0, st.size-1]
end

accum("bananalouca")
