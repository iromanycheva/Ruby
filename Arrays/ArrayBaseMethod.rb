#size, length, count
arry = [1, 2, 3, 4, nil, "Hello", 3.14]
p arry.length
p arry.size
p arry.count
p arry.count(2)

#empty?, nil?
p arry.empty?
p arry.nil?
arry=[]
p arry.empty?
p arry.nil?

#first, last
arr = [1, 3, 5, 7, 9, 15,21, 18, 6]
p arr.first
p arr.last
p arr.first(3)
p arr.last(2)
p arr.first(1)
p arr.last(1)

def custom_first(arr, num = 0)
  return arr[0] if num == 0
  arr[0, num]
end

def custom_last(arr, num = 0)
  return arr[-1] if num == 0
  arr[-num..-1]
end

p custom_first(arr)
p custom_first(arr, 5)
p custom_last(arr, 1)
p custom_last(arr)
p custom_last(arr, 5)
p custom_last(arr, 1)
