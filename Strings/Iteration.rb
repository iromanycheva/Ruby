#each_char
"Hello world".each_char { |a| puts a }
#split
name = "Iuliia"
chars = name.split("")
p chars
#chars
p name.chars

#join method
names = ["Joe", "Moe", "Bob"]
p names.join
p names.join(" ")

def custom_join(array, delimiter = "")
  return nil if array.empty?
  joined_string = ""
  array.each_with_index do |word, index|
    if index == 0
      joined_string << word
    else
      joined_string << delimiter << word
    end
  end
  joined_string
end

p custom_join(names, "-")
