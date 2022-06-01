empty_hash = {}
p empty_hash
p empty_hash.class

nfl_roster = {"Tom Brady" => "New England Patriots",
              "Tony Romo" => "Dallas Cowboys",
              "Rob Gronkowski" => "New England Patriots"}

nba_roster = {"Colors" =>["blue", "red", "green"],
              "Type" => ["Van", "Sedan", "SUV"],
              nil => "Car"}

p nba_roster[nil]
p nba_roster["Colors"]

#symbol - light weight string. We can use them as a hash key
p :name
p :name.class    #symbol
p :name.methods

person = {:name => "Boris",
          :age => 25,
          :handsome => true,
          :languages => ["Ruby", "Java", "Python"]}

p person[:name]
p person[:handsome]
p person[:languages]

#Exactly the same
person = {name: "Boris",
          age: 25,
          handsome: true,
          languages: ["Ruby", "Java", "Python"]}
p person[:name]
p person[:handsome]
p person[:languages]

p :age.to_s
p "age".to_sym
p "School bus".to_sym

#fetch method
menu = {burger: 3.99, taco: 5.96, chips: 0.5}
p menu[:burger]
p menu[:salad]   #nil
p menu.fetch(:burger)
p menu.fetch(:salad, "Not found")  #default value

#modifying hash
menu[:salad] = 8.00
p menu
menu.store(:sushi, 24.99)
p menu
menu.store(:steak, 34.99)
p menu
menu.store(:salad, 0.99)
p menu

#length and empty
p menu.length
p menu.empty?

#each method
menu.each do |key, value|
  p "#{key} costs #{value}"
end
menu.each do |guess|
  p "#{guess[0]} ++ #{guess[1]}"
end

#each_key method
salaries = {director: 100000, producer: 200000, ceo: 300000}
salaries.each_key do |position|
  puts "#{position}"
end
salaries.each_value {|salary| puts "The next employee salary is #{salary}"}

def get_keys_from_hash(hash)
  keys = []
  hash.each {|key, value| keys << key }
  keys
end

p get_keys_from_hash(menu)

#retrieve keys or values from hash
p menu.keys
p menu.values

#hash with default value
fruit_prices = Hash.new("Not found")
fruit_prices[:banana] = 1.05
fruit_prices[:orange] = 0.69
fruit_prices[:kiwi] = 10.99

p fruit_prices[:steak]
fruit_prices.default = "Whoops! That doesn't exist here!"
p fruit_prices[:steak]

#hash to array and vice versa
spice_girls = {scary: "Melanie Brown",
              sporty: "Melanie Chisholm",
              baby: "Emma Bunton",
              ginger: "Geri Halliwell",
              posh: "Victoria Beckham"}

p spice_girls.to_a
power_rangers = [[:red, "Jason"], [:black, "Zack"], [:blue, "Billy"],
[:yellow, "Trini"], [:pink, "Kimberly"]]

puts power_rangers.to_h

#sort and sort_by - return 2d array
p spice_girls.sort
p spice_girls.sort_by{|key, value| value}

#key? value? methods
puts spice_girls.key?(:red)
puts spice_girls.key?(:sporty)

puts spice_girls.value?("Jason")
puts spice_girls.value?("Victoria Beckham")

#hash as an argument to the method
def calculate_total_1(price, tip, tax)
  tax_amount = price * tax
  tip_amount = price * tip
  price + tip_amount + tax_amount
end

p calculate_total_1(24.99, 0.18, 0.07)

def calculate_total_2(hash)
  price = hash[:price]
  tax_amount = price * hash[:tax]
  tip_amount = price * hash[:tip]
  price + tax_amount + tip_amount
end

info = {price: 24.99, tax: 0.07, tip: 0.18}
p calculate_total_2(info)

#delete method
removed = spice_girls.delete(:sporty)
p spice_girls
p removed

#select and reject methods
recipe = {sugar: 5, flour: 10, salt: 2, pepper: 4}
p recipe.select {|key, value| value < 5}
p recipe.reject {|key, value| value >= 5}

#merge method
market = {garlic: "3 cloves", tomatoes: "5 batches", milk: "10 gallons"}
kitchen = {bread: "2 loaves", yougurt: "20 cans", milk: "100 gallons"}
p market.merge(kitchen) #kept milk from kitchen

def custom_merge(hash1, hash2)
  hash2_dup = hash2.dup
  hash1.each {|key, value| hash2_dup[key] = value unless hash2_dup.key?(key)}
  hash2_dup
end

p custom_merge(market, kitchen)

def word_count(string)
  words = Hash.new(0)
  string.split.each {|word| words[word.to_sym] += 1}
  words
end
p word_count("Once upon a time in a land far far away")
