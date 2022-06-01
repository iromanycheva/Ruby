class Employee

  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name} and I am #{age} years old."
  end
end

class Manager < Employee

  attr_reader :rank

  def initialize(name, age, rank)
    super(name, age)
    @rank = rank
  end

  def introduce
    result = super
    result += " and I'm a manager! Woo-hoo!"
  end
end

class Worker < Employee
end

manager = Manager.new("Rong", 50, "Senior Vice President")
worker = Worker.new("Yulia", 37)

p manager.class
p worker.class

p manager.introduce
p worker.introduce

p Manager.ancestors
puts Manager < Employee #if manager inherits from Employee
puts Employee < Manager
puts Worker < Employee

p manager.is_a?(Manager)
p manager.is_a?(Employee)
p manager.is_a?(Worker)

p manager.instance_of?(Manager)
p manager.instance_of?(Employee)
p manager.instance_of?(Worker)
