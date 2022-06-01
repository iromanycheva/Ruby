#3.times { |count| puts "We are on number #{count}"}
# 3.times do |count|
#   puts "We are currently on loop number #{count}"
#   puts "I am having a lot of fun!"
#   puts "Let's learn together"
# end

10.times do |count|
  puts "#{3 * (count + 1)}"
end

evens = [2, 4, 6, 8, 10]
evens.each { |number| puts number ** 3}

colors = ["Red", "Purple", "Green", "Blue"]
statements = colors.map {|color| "#{color} is a great color"}
p statements

#yield
def pass_control
  puts "This is inside the method!"
  yield   #Pass control from the method to the block
  puts "Now I'm back inside the method"
end

pass_control {puts "Now I'm inside the block"}
#if there is no block - we'll see an error

def multiple_pass
  puts "Inside the method"
  yield
  puts "Back inside the method"
  yield
end

multiple_pass {puts "Now I'm inside the block"}

#yield with arguments
def speak_the_truth(name, age)
  yield name, age if block_given?
end

speak_the_truth("Boris", 10) {|name, age| puts "#{name} is #{age} years old"}


#Procs - saved block. Block is not an object, Proc - is an object
cubes = Proc.new {|num| num ** 3}
squares = Proc.new {|num| num ** 2}
a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9, 10]
c = [11, 12, 13, 14, 15]
a_cubes = a.map(&cubes)   # & activates this proc
b_squares = b.map(&squares)
c_cubes = c.map(&cubes)

p a_cubes
p b_squares
p c_cubes

#another option
a_cubes1, b_cubes1, c_cubes1 = [a, b, c].map{|array| array.map(&cubes)}
p a_cubes1
p b_cubes1
p c_cubes1

currencies = [10, 20, 30, 40, 50]
to_euros = Proc.new {|currency| currency * 0.95}
to_rupees = Proc.new {|currency| currency * 68.13}
to_pesos = Proc.new {|currency| currency * 20.67}

p currencies.map(&to_euros)
p currencies.map(&to_rupees)
p currencies.map(&to_pesos)

def greeter
  puts "I'm inside the greeter method"
  yield
end

phrase = Proc.new do
  puts "Inside the proc"
end
#don't have arguments, but can use proc
greeter(&phrase)

hi = Proc.new {puts "Hi there"}
hi.call

#pass a ruby method as a Proc
p ["1", "2", "3"].map {|elem| elem.to_i}
p ["1", "2", "3"].map(&:to_i)
p [1, 2, 3].map(&:to_s)

p [1, 2, 3, 4, 5].select(&:even?)

#method with proc argument
def talk_about(name, &myprc)
  puts "Let me tell you about #{name}."
  myprc.call(name)
end

good_things = Proc.new do |name|
  puts "#{name} is a genius!"
  puts "#{name} is a jolly good fellow!"
end

bad_things = Proc.new do |name|
  puts "#{name} is a dolt!"
  puts "I can't stand #{name}!"
end

talk_about("Boris", &good_things)
talk_about("Boris", &bad_things)

#the block_given? method
def pass_control_on_condition
  puts "Inside the method"
  yield if block_given?
  puts "Back inside the method"
end

pass_control_on_condition {puts "Have block"}
pass_control_on_condition

#custom each method
def custom_each(array)
  i = 0
  while i < array.length
    yield array[i]
    i += 1
  end
end

names = ["Boris", "Arnold", "Marisa"]
numbers = [10, 20, 30]
custom_each(names) {|name| p name.length}
custom_each(numbers) {|number| p number ** 2}

#Lambda - objects
squares_lambda = lambda {|number| number ** 2}
squares_proc = Proc.new {|number| number ** 2}
[1, 2, 3].map(&squares_proc)
p squares_proc.call(5)

[1, 2, 3].map(&squares_lambda)
p squares_lambda.call(5)

#proc doesn't care about number of arguments
some_proc = Proc.new {|name, age| "Your name is #{name} and your age is #{age}"}
p some_proc.call("Boris", 27)
p some_proc.call("Iuliia")
p some_proc.call

some_lambda = lambda {|name, age| "Your name is #{name} and your age is #{age}"}
p some_lambda.call("Boris", 27)
#p some_lambda.call("Iuliia")  - error, wrong number of arguments
#p some_lambda.call            - error

#After return from lambda, continuing
def diet
  status = lambda {return "You gave in"}
  status.call
  "You completed the diet!"
end
p diet

#Never reaches last line
def diet
  status = Proc.new {return "You gave in"}
  status.call
  "You completed the diet!"
end
p diet

#Lambda Efficiency
def convert(dollars, currency)
  yield(dollars, currency) if dollars.is_a?(Numeric)
end

def convert_to_euros(dollars)
  dollars * 0.95 if dollars.is_a?(Numeric)
end

def convert_to_pesos(dollars)
  dollars * 20.67 if dollars.is_a?(Numeric)
end

def convert_to_rupees(dollars)
  dollars * 68.13 if dollars.is_a?(Numeric)
end


p convert_to_euros(1000)
p convert_to_pesos(1000)
p convert_to_rupees(1000)

p convert(1000, "euros") {|dollars| dollars * 0.95}
p convert(1000, "pesos") {|dollars| dollars * 20.67}
p convert(1000, "rupees") {|dollars| dollars * 68.13}

to_euros = lambda {|dollars| dollars * 0.95}
to_pesos = lambda {|dollars| dollars * 20.67}
to_rupees = lambda {|dollars| dollars * 68.13}

def convert2(dollars, currency_lambda)
  currency_lambda.call(dollars) if dollars.is_a?(Numeric)
end

p convert2(1000, to_euros)
p convert2(1000, to_pesos)
p convert2(1000, to_rupees)
