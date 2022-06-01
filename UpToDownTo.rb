# 5.downto(1) {|i| puts "Let's countdown #{i}"}
# 5.upto(10) {|i| puts "Lets count up #{i}"}

5.downto(0) do |current_number|
  puts "We are currently on #{current_number}"
  puts "Hooray!"
end

puts "LIFTOFF!"
