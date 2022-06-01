#block: with {} or do-end
3.times { |a| puts "Hello there #{a}"}

3.times do |a|
  square = a * a
  puts "Buy there #{square}"
end

#each method
candies = ["Sour patch kids", "Milky Way", "Airheads"]
candies.each do |candy|
  puts "I love eating #{candy}"
end

names = ["bo", "moe", "joe"]
names.each {|name| puts "His name is #{name.upcase}"}

[1, 2, 3, 4, 5].each do |num|
  square = num * num
  puts "Square of #{num} is #{square}!"
end

fives = [5, 10, 15, 20, 25, 30, 35, 40]
odds = []
evens = []
fives.each do |num|
  if num.odd?
    odds << num
  elsif
    evens << num
  end
  #num.even? ? evens << num : odds << num
end
p "Odds: #{odds}"
p "Evens: #{evens}"

#Nested each
shirts =["striped", "plain white", "plaid", "band"]
ties = ["polka dot", "solid color", "boring"]
shirts.each do |shirt|
  ties.each do |tie|
    puts "Option: A #{shirt} shirt and a #{tie} tie"
  end
end

#For loop - not popular
numbers = [3, 5, 7]
for elem in numbers
  puts elem
end
p elem    #elem is saved after for

rng = 1..10
for rng_number in rng
  p rng_number
end
p rng_number

#each_with_index
colors = ["Red", "Blue", "Green", "Yellow"]
colors.each_with_index do |color, idx|
  puts "Moving on to the next one"
  puts "The #{idx + 1} color is #{color}"
end

fives = [5, 10, 15, 20, 25]
fives.each_with_index do |number, index|
  puts "The current value is #{number} at index #{index}!"
  puts number * index
end

numbers = [1, 2, 3, 4, 5]
#Write a loop that gives me a sum of the products
# of each index and its value
result = 0
numbers.each_with_index do |num, idx|
  result += num * idx
end
p result

numbers = [-1, 2, 1, 2, 5, 7, 3]
# Prints the product of the element and its index position
#if the index position is greater than the element
# Create this within a method

def print_if(arr)
  arr.each_with_index do |num, idx|
    puts num * idx if idx > num
  end
end

print_if(numbers)

#while, until loops
animals = ["Lion", "Zebra", "Baboon", "Cheetah"]
i = 0
while i < animals.length
  puts animals[i]
  i+=1
end

i = 0
until i >= animals.length
  puts i
  puts animals[i]
  i+=1
end

#break
prizes = ["Pyrite", "Pyrite", "Pyrite", "Pyrite", "Gold", "Pyrite"]
i = 0
while i < prizes.length
  current = prizes[i]
  if current == "Gold"
    puts "Yay! Found gold!"
    break
  else
    puts "#{current} is not gold!"
  end
  i +=1
end

numbers = [1, 2, 3, "Hello", 5, 6, 7, 8]
numbers.each do |num|
  if num.is_a?(Numeric)
    puts "The square of #{num} is #{num ** 2}"
  else
    puts "That's not a valid number"
    break
  end
end

#next
numbers = [1, 3, 4, "Hello", 5, 7, nil, 10, []]
numbers.each do |num|
  unless num.is_a?(Numeric)
    next
  end
  puts "The square of #{num} is #{num ** 2}"
end
