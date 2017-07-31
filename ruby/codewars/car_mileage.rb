def create_palindrome(arr)
half = (arr.size/2.to_f).ceil
new_arr = arr
new_arr[half...arr.size] = arr[0...half].reverse
arr[half...arr.size] = new_arr[half...new_arr.size]
arr[0...half] = new_arr[0...half]
return arr
end






def is_interesting(n, ar)
my_arr = n.to_s.split('').map(&:to_i)

create_palindrome(my_arr)


end


p is_interesting(21654, [])
