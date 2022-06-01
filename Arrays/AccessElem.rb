#by index
fruits = ["apple", "orange", "grape", "banana"]
p fruits.length
p fruits[0]
p fruits[1]

p fruits[fruits.length - 1]
p fruits[-1]
p fruits[-3]

names = ["Tom", "Cameron", "Bob"]
p names[2]
p names[100]

#by fetch
p names.fetch(2)
#p names.fetch(100) return error
p names.fetch(100, nil)  #if doesn't exist return nil

#by brackets
numbers = [1, 3, 5, 7, 9, 15, 21]
p numbers[2, 4]  #start from position 2 and take 4 items
p numbers[1, 10]
p numbers[-1, 5]
p numbers[0, 1].class
p numbers[0].class

#using range
numbers = [1, 3, 5, 7, 9, 15, 21]
p numbers[3, 4]
p numbers[3..4]

#multiple elements with values_at method
channels = ["CBS", "FOX", "NBC", "ESPN", "UPN"]
p channels.values_at(3)
p channels.values_at(0, 1, 3)
p channels.values_at(0..3)

#using slice the same as square brackets
numbers = [1, 3, 5, 7, 9, 15, 21]
p numbers.slice(3)
p numbers.slice(100)
p numbers.slice(2,3)
p numbers.slice(4..6)
p numbers.slice(4...6)

#unpack multidimensional array
users = [["Bob", 25, "Male"], ["Susan", 48, "Female"], ["Larry", 62, "Male"]]
bob, susan, larry = users
p bob
p susan
p larry
