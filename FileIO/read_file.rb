#we can execute it by running 'ruby read_file.rb'
#File.open("novel.txt").each do |line|
  #puts line
#end

#rewrite file
File.open("myFirstFile.txt", "w") do |file|
  file.puts "I'm creating this from Ruby!"
  file.write "No line break here!"
  file.puts "Pretty cool!"
end

#append to the file
File.open("myFirstFile.txt", "a") do |file|
  file.puts "This will be appended to the end"
  file.print "And one more line with file.print"
  file.write "And another line with file.write"
end

#rename file
File.rename("myFirstFile.txt", "somethingBetter.txt")

#delete file
if File.exist?("myFirstFile.txt")
  File.delete("myFirstFile.txt")
end

#command line arguments, from the terminal 'ruby read_file.rb 1 2 3 4'
ARGV.each do |argument|
  number = argument.to_i
  puts "The square of #{number} is #{number ** 2}"
end

#load method
puts "This is the beginning"
load "FileIO/end.rb"
puts "Alright, that was successful."
load "./FileIO/end.rb"

if 8 > 5
  load "FileIO/end.rb"
end

#require and require_relative
require "./FileIO/end.rb"
require_relative "end.rb" #the same directory
