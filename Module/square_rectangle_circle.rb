#better to split into different files
module Square
  def self.area(side)
    side ** 2
  end
end

module Rectangle
  def self.area(length, width)
    length * width
  end
end

module Circle
  PI = 3.14159
  def self.area(radius)
    PI * radius * radius
  end
end

puts Square.area(5)
puts Rectangle.area(2, 3)
puts Circle.area(5)
