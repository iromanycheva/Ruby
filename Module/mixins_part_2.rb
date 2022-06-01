module Purchaseable
  #without self, because it has to be injected by class
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  #include Purchaseable
  prepend Purchaseable  #place the module method before its own method
end

class Supermarket
  include Purchaseable
end

class CornerMart < Supermarket
end

barnes_and_noble = Bookstore.new
p barnes_and_noble.purchase("Atlas Shrugged")

whole_foods = Supermarket.new
p whole_foods.purchase("Ice cream")

quickstop = CornerMart.new
p quickstop.purchase("Slim Jim")

#ancestors return all parent classed and included modules
p Bookstore.ancestors

#extend keyword
module Announcer
  def who_am_i
    "The name of this class is #{self}"
  end
end

class Dog
  include Announcer
end

class Cat
  extend Announcer  #method available on the class not an object
end

watson = Dog.new
p watson.who_am_i

p Cat.who_am_i
