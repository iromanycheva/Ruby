class Bicycle
  #it's class variable for the class, not an object
  @@maker = "BikeTech"
  @@count = 0

  def initialize
    @@count+= 1
  end

  #it's a class method, prefix with self or name of the class
  def self.description
    "Hi there, I'm the blueprint for Bicycles! Use me to create a bicycle!"
  end

  def self.count
    @@count
  end

  def maker
    @@maker
  end
end

p Bicycle.description
p Bicycle.count
bike = Bicycle.new
p bike.maker
p Bicycle.count
