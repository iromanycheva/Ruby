#super without parentheses
#super with parentheses but no arguments
#super with parentheses and with these arguments

class Car
  attr_reader :maker

  #with parentheses and arguments
  def initialize(maker)
    @maker = maker
  end

  def drive
    "Room! Room!"
  end
end

class Firetruck < Car
  attr_reader :sirens
  def initialize(maker, sirens)
    super(maker)
    @sirens = sirens
  end

  #without parentheses
  #def drive()
  #  super + " Beep! Beep!"
  #end

  #with parentheses
  def drive(speed)
    super() + " Beep! Beep! I'm driving at #{speed} miles per hour"
  end

end

ft = Firetruck.new(4, 4)
p ft.maker
p ft.sirens
p ft.drive(10)
