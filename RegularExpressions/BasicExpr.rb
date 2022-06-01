#start_with?, end_with?
phrase = "The Ruby Programming Language is amazing!"
puts phrase.start_with?("The")
puts phrase.start_with?("the")
puts phrase.end_with?("ing!")
puts phrase.end_with?("ing")

def custom_start_with? (str, start_str)
  str[0, start_str.length] == start_str
end

def custom_end_with? (str, start_str)
  str[-start_str.length, start_str.length] == start_str
end

p custom_start_with?(phrase, "The")
p custom_start_with?(phrase, "The Ruby Programming Language is amazing! Hoora!")
p custom_start_with?(phrase, "the")

p custom_end_with?(phrase, "ing!")
p custom_end_with?(phrase, "ing")
p custom_end_with?(phrase, " The Ruby Programming Language is amazing!")

#include?
puts phrase.include?("Ruby")
def custom_include?(string, substring)
  len = substring.length
  return true if substring.empty?
  string.chars.each_with_index do |a, index|
    return true if string[index, len] == substring
  end
  false
end
puts custom_include?(phrase, "Ruby")
puts custom_include?(phrase, "Language")
puts custom_include?(phrase, "isn")
