fruits = ["Apple", "Orange", "Grape", "Banana"]
fruits[1] = "Watermelon"
p fruits
fruits[-1] = "Bananas"
p fruits
fruits[4] = "Strawberry"
p fruits
fruits[7] = "Melon"
p fruits

fruits[3, 2] = ["Canteloupe", "Dragonfruit"]
p fruits

fruits[0..2] = ["Blackberry"]
p fruits
p "----------------------------------------"
#push method - add to the end
locations = ["House", "Airport", "Bar"]
locations.push("Restaurant")
p locations
locations.push("Saloon", "GroceryStore")
p locations

#shovel operator
locations << "Cafe" << "Fire Station"
p locations

#insert method
locations.insert(1, "School")
p locations

#pop method - removes an element from the end
p locations.pop  #elem
p locations
p locations.pop(2) #array
p locations

#shift method - removes the first elements
p locations.shift
p locations
p locations.shift(1)
p locations

#unshift method add element in the beginning
locations.unshift("House")
p locations
locations.unshift("School", "Grocery Store")
p locations
