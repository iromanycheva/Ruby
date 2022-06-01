if 5
  puts "This is true"
end

color = "Green"
if color == "Red"
  puts "Red is rad"
elsif color == "Green"
  puts "Green is great!"
end

age = 25
ticket = "General Admission"
id = true
if age > 21 && ticket == "General Admission" && id
  puts "You can attend"
end

budget = 5
price = 10
mood = "Happy"
if budget > price || mood == "Happy"
  puts "I'm going to buy the item!"
end

#Ternary Operation
puts 1 < 2? "Yes, it is!" : "No, it's not!"

def even_or_odd(number)
  number.even? ? "That number is even" : "That number is odd"
end

puts even_or_odd(1)
puts even_or_odd(2)

#inline modifiers
number = 5000
puts "Huge number!" if number > 2500

x = 8
puts "x is not greater than 10" unless x > 10
