#only assign new value to variable if this variable has value nil
y = nil
p y

y ||= 5   #y = 5 only if it was nil
p y

y ||=10
p y

greeting = "Hello"
extraction = 100
letter = greeting[extraction]
letter ||="Not found"

p letter
