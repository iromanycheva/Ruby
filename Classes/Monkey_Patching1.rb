class Array

  def sum
    total = 0
    self.each {|num| total += num if num.is_a?(Numeric) }
    total
  end

end

p [1, 2, 3, "a", "b"].sum

class String

  def alphabet_sum
    total = 0
    alphabet = ("a".."z").to_a
    self.downcase.each_char do |ch|
      if alphabet.include?(ch)
        total += alphabet.index(ch) + 1
      end
    end
    total
  end
end

p "abc".alphabet_sum

class Hash
  def identify_duplicate_values
    values = []
    dupes = []
    self.each_value do |val|
      values.include?(val) ? dupes << val : values << val
    end
    dupes.uniq
  end
end

scores = {a: 100, b: 100, c: 83, d: 50, e: 13, f: 6, g: 100, h: 13, i: 50}
p scores.identify_duplicate_values

class Numeric
  def seconds
    self
  end

  def minutes
    self * 60
  end

  def hours
    self * 3600
  end

  def days
    self * 3600 * 24
  end

  #yielding to a block
  def custom_times
    i = 0
    while i < self
      yield(i + 1)
      i += 1
    end
  end

end

puts Time.now + 2.days
5.times {|i| puts i}
5.custom_times {|i| puts i}

class Book
  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end
end

goosebumps = Book.new("Night of the Living Dummy", "R.L.String", 100)
p goosebumps

class Book
  def read
    1.step(@pages, 10) {|page| puts "Reading page #{page}..."}
    puts "Done! #{@title} was a great book!"
  end
end

animal_farm = Book.new("Animal Farm", "George Orwell", 50)
animal_farm.read
goosebumps.read
