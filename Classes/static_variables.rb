class Product
  @@product_counter = 0

  def self.counter
    @@product_counter
  end

  def initialize
    @@product_counter += 1
  end
end

class Widget < Product
  @@widget_counter = 0

  def self.counter
    @@widget_counter
  end

  def initialize
    super
    @@widget_counter += 1
  end
end

class Thingamajig < Product
  @@thingamagic_counter = 0

  def self.counter
    @@thingamagic_counter
  end

  def initialize
    super
    @@thingamagic_counter += 1
  end
end

widget = Widget.new
p Widget.counter
p Product.counter

thing = Thingamajig.new
p Thingamajig.counter
p Product.counter
