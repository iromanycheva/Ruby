#class is Regexp
#reg exp are created with two forward slashes (//) syntax
# the condition is placed between the two forward slashes
# The =~ syntax will return the index position of the first match
# string =~ //
# /./ any character at all
puts //.class      #Regexp
phrase = "The Ruby Programming. Language is amazing!"
p phrase =~ /T/    #the first occurance. return 0
p phrase =~ /R/    #4
p phrase =~ /!/    #40
p phrase =~ /./    #0
p phrase =~ / /    #3
p phrase =~ /x/    #nil
p phrase =~ /Ru/   #4


#scan method. Run on a string, argument - Regexp. Returns all matches
voicemail = "I can be reached at 555-123-4567 or regexman@gmail.com"
p voicemail.scan(/e/)          #["e", "e", "e", "e", "e"]
p voicemail.scan(/e/).length   #5
p voicemail.scan(/re/)         #["re", "re"]
#[re] looks for either r or e
p voicemail.scan(/[re]/)       #["e", "r", "e", "e", "r", "r", "e", "e"]

#\d -any single digit
p voicemail.scan(/\d/)          #["5", "5", "5", "1", "2", "3", "4", "5", "6", "7"]
#\d+ - any ocurrances of one or more digits in a row
p voicemail.scan(/\d+/)         #["555", "123", "4567"]
#we can apply block
voicemail.scan(/\d+/) {|digit_match| puts digit_match.length}

# . - wildcard symbol
p phrase.scan(/.am/)            #["ram", " am"]
p phrase.scan(/.ing/)           #["ming", "zing"]
p phrase.scan(/a.e/)            #["age"]
p voicemail.scan(/\d.\d.\d/)    #["555-1", "3-456"]

#backslash
paragraph = "This is my essay. I deserve an A. I rank it a 5 out of 5."
#\. - literal dot
p paragraph.scan(/\./)           #[".", ".", "."]
#\d - any digit
#\D - any Non Digit
p paragraph.scan(/\D/)   #["T", "h", "i", "s", " ", "i", "s", " ", "m", "y", " ", "e", "s", "s", "a", "y", ".", " ", "I", " ", "d", "e", "s", "e", "r", "v", "e", " ", "a", "n", " ", "A", ".", " ", "I", " ", "r", "a", "n", "k", " ", "i", "t", " ", "a", " ", " ", "o", "u", "t", " ", "o", "f", " ", "."]
#\s - any whitespace
p paragraph.scan(/\s/).length    #15
#\s+ - any one or more whitespace
#\S - any non whitespace symbols


#Regex anchors
poem = "99 bottles of beer of the wall, 99 bottles of beer"
p poem.scan(/\d+/)         #["99", "99"]
#\A means search in the beginning
#\z means end of the string
p poem.scan(/\A\d+/)       #[99]
p poem.scan(/eer\z/)       #[eer]

#exclude characters
sales = "I bought 9 apples, 25 bananas, and 4 oranges at the store."
#^ - exclude characters
#find all consonants
p sales.scan(/[^aeiouAEIOU,\s\d\.]/)  #["b", "g", "h", "t", "p", "p", "l", "s", "b", "n", "n", "s", "n", "d", "r", "n", "g", "s", "t", "t", "h", "s", "t", "r"]

#sub and gsub methods
#sub - substitute the first occurance of the first arg with the sec arg
p "whimper".sub("m", "s")       #whisper
p "wordplay".sub("w", "sw")     #swordplay

word = "aspirin"
word.sub!("in", "ing")
p word
#gsub - global substitution - replace all occurances
p "an apple".gsub("a", "-")
p "(555)-555 1234".gsub(" ", "").gsub("(", "").gsub(")", "").gsub("-", "")
p "(555)-555 1234".gsub(/[-\s\(\)]/, "")
