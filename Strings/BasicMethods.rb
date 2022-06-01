#split
sentence = "Hi, my name is Boris. There are spaces here!"
p sentence.split  #split based on " "
p sentence.split(".")

def longest_word(sentence)
    words = sentence.split
    return nil if words.empty?
    longest = words[0]
    words.each { |word| longest = word if longest.length <= word.length}
    longest
end
p longest_word("Bobbly loves big scary kangaroos")
p longest_word("Ruby is my favorite language")

#count method
puts "Hello World.".count("lo")
def custom_count(string, search_character)
  # Return the number of total times that
  # the search characters are in the string
  total = 0
  search_character.each_char do |ch|
    string.each_char {|cur| total += 1 if cur == ch}
  end
  total
end
p custom_count("Hello World.","lo")

#index, rindex methods
fact = "I am very handsome."
p fact.index("am")
p fact.rindex("a")
p fact.index("e", 7)

def custom_index(string, substring)
  # Return nil if substring not found in string
  # Return index position of substirng if found in string
  pos = 0
  idx = 0
  len = substring.length
  string.each_char do |cur|
    if cur == substring[pos]
      pos += 1
      if pos == len
        return idx - pos + 1
      end
    else
      pos = 0
    end
    idx+= 1
    end
  nil
end
p custom_index(fact, "e")

#insert method
typo = "GeorgWashington"
typo.insert(5, "e ")
p typo

#squeeze method
sentence = "Thhe aardvark jummped    ovver the fence!"
puts sentence.squeeze
puts sentence.squeeze(" m")

def custom_squeeze(string)
  cur_char = nil
  res = ""
  string.each_char do |ch|
    if cur_char != ch
      res << ch
      cur_char = ch
    end
  end
  res
end
p custom_squeeze(sentence)

#clear method
word = "Blah blah blah"
p word.clear
p word

#delete method
a = "Hello world"
puts a.delete("lo")
puts a

def custom_delete(string, chars_to_delete)
  final = ""
  string.each_char { |ch| final << ch unless chars_to_delete.include?(ch)}
  final
end

p custom_delete(a, "lo")
