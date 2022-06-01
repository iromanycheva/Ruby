a = "Hello"
b = "hello"
c = "Hello"

p a == "lion"
p a == b
p a == c
p "apple" < "banana"
p "apple" < "Banana"
p "-------------------------------"
first_name = "Harry "
second_name = "Potter"
p first_name.concat(second_name)
p first_name

p second_name.prepend(first_name)
p first_name << second_name
p first_name
p "-------------------------------"
a = "Hello world"
b = "Hi!"
c = " "
d = ""

p a.length
p b.length
p c.length
p d.length

p a.size.class
p b.size
p c.size
p d.size
p "-------------------------------"

story = "Once upon a time in a land far, far away"
p story.length
p story[3]
p story[-1]
p story[-3]
p story[43]
p story[3]
p story.slice(3)
p story[5, 4]
p story.slice(5, 4)
p story[0, 5]
p story[0, story.length]
p story[-7, 5]
p "-------------------------------"
