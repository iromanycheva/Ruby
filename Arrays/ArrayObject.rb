p [1, 2, "two", 4].class
p [1, 2, 3, 4].size
p [].size
#Creation of array
numbers = [4, 8, 12, 20]
toys = ["Teddy bear", "Super Soaker", "board game"]
things = [4, true, "Hello", 10.99]
registration = [true, true, false, true, false]
students = [["Boris", 25, true],
            ["Sally", 23, true],
            ["Ingrid", 31, false]]
puts students
p students

#Creation an array of strings with %w
names = %w[Jack Jill John James]
puts names

#Creation an array as new Object
ary = Array.new(5) #size of Array, all values are nil
p ary

ary2 = Array.new(5, 1) #size of Array, all values are 1
p ary2

#equality
a=[1,2,3]
b=[1,2,3,4]
c=[3,2,1]
d=[1,2,3]
p a == b
p a == c
p a == d

#spaceship operator. returns 0 if equal,
# -1 if left side is smaller,
# 1 if right side is larger
p 5<=>5
p 5<=>2
p 2<=>5

p [3,4,5]<=>[3,4,5]
p [3,4,5]<=>["Bla", 4, 5]
p [3,4,5]<=>[3,4,8]
p [3,4,5,10]<=>[3,4,7]

#Range to an Array
letters_range = "A".."T"
p letters_range
p letters_range.to_a

#Predicate method is_a?
p letters_range.is_a?(Array)
p letters_range.to_a.is_a?(Array)
p 1.is_a?(String)
p 1.is_a?(Numeric)

arr=["a", "b"]
if arr.is_a?(Array)
  arr.each {|e| puts e }
end

#object_id - address of an object in memory
a = [1, 2, 3]
b = [1, 2, 3]
p a.object_id
p b.object_id
c = a
p c.object_id

#dup method - copy method
d = a.dup
p d.object_id
