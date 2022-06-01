numbers = [1, 2, 3 ,4, 5]
squares = []
numbers.each {|number| squares << number * number}
p squares

#map method
squares2 = numbers.map{|elem| elem * elem}
p squares2

#collect method
squares3 = numbers.collect{|elem| elem * elem}
p squares3

fahr_temperatures = [105, 73, 40, 18, -2]
celsium_temperatures = fahr_temperatures.map {|temp| (5.0*(temp - 32)/9.0).round(2)}
p celsium_temperatures

#reverse
p [1, 3, 5].reverse
queue = [1, 2, 3, 4]
p queue.reverse
p queue
p queue.reverse!
p queue

#sort
arr = [5, 13, 1, -2, 8]
words = ["caterpillar", "kangaroo", "apple", "zebra"]
p arr.sort
p arr
p arr.sort!
p arr
p words.sort

#concat method changes the original array
p [1,2,3] + [4,5]
p [1,2,3].concat([4,5])

def custom_concat(arr1, arr2)
  arr2.each do |num|
    arr1.push(num)
  end
  arr1
end

a = [1, 2, 3]
b = [4, 5, 6]
p custom_concat(a, b)

#max, min methods
stock_prices = [723.99, 456.12, 84.17, 649.92]
p stock_prices.max
p stock_prices.min

def custom_max(arr)
  return nil if arr.empty?
  max = arr[0]
  arr.each do |num|
    max = num if num > max
  end
  max
end

p custom_max(stock_prices)

#include method
p stock_prices.include?(723.99)
p stock_prices.include?(723)

#index and find_index - the same
colors = ["red", "blue", "green", "red"]
p colors.index("blue")
p colors.index("red")
p colors.find_index("red")

#select method
grades = [80, 95, 13, 76, 28, 39]
p grades.select {|a| a >= 50}  #must be boolean

words = ["level", "selfless", "racecar", "dinosaur"]
palindroms = words.select {|word| word == word.reverse}
p palindroms

#reject method - opposite of select
non_palindroms = words.select {|word| word != word.reverse}
p non_palindroms

#Partition
foods = ["steak", "vegetables", "steak burger", "kale", "tofu", "tuna steak"]
good = foods.select {|food| food.include?("steak")}
bad = foods.reject{|food| food.include?("steak")}
p good
p bad
good1, bad1 = foods.partition{|food| food.include?("steak")}
p good1
p bad1

#any?
p [1, 3, 5, 7,2].any? {|n| n.even?}


#all
p [1, 3, 5, 7, 2].all? {|n| n.even?}

#find and detect methods
words = ["dictionary", "refrigerator", "platypus", "microwave"]
p words.select {|word| word.length > 8}
p words.find {|word| word.length > 8}
p words.detect {|word| word.length > 8}
p words.find {|word| word.length > 15}
lottery = [4,8,15,16,23,42]
p lottery.find {|a| a.odd?}

#uniq/uniq! method
numbers = [1, 2, 3, 2, 7, 7, 8, 9, 1]
p numbers.uniq
p numbers
numbers.uniq!
p numbers

def custom_uniq(array)
  new_array = []
  array.each {|num| new_array << num unless new_array.include?(num)}
  new_array
end
numbers = [1, 2, 3, 2, 7, 7, 8, 9, 1]
p custom_uniq(numbers)

#compact/compact! method - delete all nil elements from an array
p [1, 2, 3].compact
p [1, 2, 3, nil].compact
p [false, "", 1, nil, true].compact
p [nil].compact

def custom_compact(array)
  final = []
  array.each {|elem| final << elem unless elem == nil}
  final
end

p custom_compact([1, 2, 3, nil])

#inject and reduce methods
result = [10, 20, 30, 40].inject(0) do |previous, current|
  previous + current
end
p result

#flatten method
registrations = [
  ["Bob", "Dan", "Jack"],
  ["Rick", "Susan", "Molly"],
  ["Pierce", "Sean", "George"]
]

flatten_array = registrations.flatten
p flatten_array

#zip method
names = ["Bo", "Moe", "Joe"]
registration = [true, false, false]
p names.zip(registration)

p [1, 2, 3].zip([4,5,6], ["A", "B", "C"])
def custom_zip(arr1, arr2)
  arr3 = []
  arr1.each_with_index {|elem1, idx| arr3 <<[elem1, arr2[idx]]}
  arr3
end

p custom_zip(names, registration)

#sample method - random value
flavors = ["chocolate", "vanilla", "strawberry", "rum raisin"]
p flavors.sample
p flavors.sample(10)

#Multiply an array
p 4 * 3
p "4" * 3
p [1,2,3] * 3

def custom_multiply(array, number)
  final = []
  number.times do
    array.each {|elem| final << elem}
  end
  final
end
p custom_multiply([1,3,5], 3)

#union - combine arrays and remove duplicates
p [1, 2, 3] | [3, 4, 5]    #[1,2,3,4,5]
p [1, 2, 3].union([2,4,5]) #[1,2,3,4,5]
def custom_union(arr1, arr2)
  final = []
  arr1.each {|elem1| final << elem1 unless final.include?(elem1)}
  arr2.each {|elem2| final << elem2 unless final.include?(elem2)}
  final
end
p custom_union([1,2,3], [3, 4,5])

#remove elements of one array from another arrays
a = [1, 1, 2, 2, 3, 3, 3, 4, 5]
p a - [2, 3]
def custom_subtraction(arr1, arr2)
  final = []
  arr1.each {|elem| final << elem unless arr2.include?(elem)}
  final
end
p custom_subtraction(a, [2, 3])

#intersection array
p [1, 1, 2, 3, 4, 5] & [1,1,  4, 5, 8, 9]
def custom_intersection(arr1, arr2)
  final = []
  arr1.uniq.each {|elem| final << elem if arr2.include?(elem)}
  final
end
p custom_intersection([1, 1, 2, 3, 4, 5], [1, 4, 5, 8, 9])
