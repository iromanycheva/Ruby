story = "Once upon a time in a land far, far away"

p story[27..39]    #include 39
p story.slice(27..39)

p story[27...39]   #exclude 39
p story.slice(27...39)

p story[32..100]
p story[27..-9]

nums = 1..5
p nums.class
p nums.first
p nums.first(4)
p nums.last
p nums.last(4)
p nums.size

puts (1..10).first(3)

alphabet = "A".."z"
p alphabet.first(40)
p alphabet.last(8)
p alphabet.size   #return nil

half_alphabet = "a".."m"
puts half_alphabet.include?("b")
puts half_alphabet.include?("z")

p half_alphabet === "k" #if k in the range

#Random number
puts rand     #generate float number between 0 and 1
puts rand.round(2)  #digits after floating point
puts rand(100)      #generate number between 0 and 100 (excluded)
puts rand * 100
puts rand(20..80)
