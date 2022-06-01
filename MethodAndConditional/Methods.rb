def introduce_myself
  puts "My name is Iuliia."
end

5.times do
  introduce_myself
end

def praise_person(name, sex, age)
  puts "#{name} is amazing"
  puts "#{sex} is #{age} years old"
end

praise_person("Anna", "She", 11)
praise_person("Egor", "He", 8)

def add_two_numbers(num1, num2)
  num1+num2
end

puts add_two_numbers(2, 4)

def nothing
end
p nothing

def return_string
  "what will be the return value here"
end

def return_guess
end

p return_string
p return_guess

#splat arguments - numbers as array
def sum(*numbers)
  sum = 0
  numbers.each {|num| sum += num}
  sum
end

p sum(1, 2)
p sum(1, 3, 5, 7)
