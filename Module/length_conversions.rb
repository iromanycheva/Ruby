module LengthConversions
  WEBSITE = "https://www.metric-conversions.org/length-conversion.htm"

  def self.miles_to_feet(miles)
    miles * 5280.0
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet * 12
  end

  def self.miles_to_centimeters(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end
end

puts LengthConversions.miles_to_feet(100)
puts LengthConversions::WEBSITE
puts LengthConversions.miles_to_inches(200)
