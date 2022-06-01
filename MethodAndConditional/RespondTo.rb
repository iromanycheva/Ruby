#test if the method is available for some object
num = 1000
p num.respond_to?("next")
p num.respond_to?("split")
p num.respond_to?("times")

p "Hello".respond_to?("length")
p "Hello".respond_to?(:length)
p 1.respond_to?(:next)
