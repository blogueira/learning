def create_palindrome(arr)
half = (arr.size/2)
new_arr = arr
new_arr[half...arr.size] = arr[0...half].reverse
arr[half...arr.size] = new_arr[half...new_arr.size]
arr[0...half] = new_arr[0...half]
p "generating palindrome:"
p arr
return arr
end






def is_interesting(n, ar)
my_arr = n.to_s.split('').map(&:to_i)
p "n = " + n.to_s
p "palindrome = " + create_palindrome(my_arr).join.to_i.to_s
if (n - create_palindrome(my_arr).join.to_i) < 3
  p "holy dog toffee!"
end


end


p is_interesting(216, [])
