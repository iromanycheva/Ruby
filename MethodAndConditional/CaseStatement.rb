def rate_my_food(food)
  case food
  when "Steak"
    "Pass the steak sauce! That's delicious!"
  when "Sush"
    "Great choice! My favorite food"
  when "Tacos", "Burritos", "Quesadillas"
    "Cheese and filling! The perfect combination"
  when "Tofu", "Brussel Sprouts"
    "Disgusting! Yuck!"
  else
    "I don't know about that food!"
  end
end

puts rate_my_food("Steak")
puts rate_my_food("Eggs")
puts rate_my_food("Tofu")

def calculate_school_grade(grade)
  case grade
  when 90..100 then "A"
  when 80..89 then "B"
  when 70..79 then "C"
  when 60..60 then "D"
  else "F"
  end
end

puts calculate_school_grade(85)
puts calculate_school_grade(78)
