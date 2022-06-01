today2 = Time.new
today = Time.now
p today.class
p today2.class
p today
p today2

p Time.new(2015)
p Time.new(2015, 3)
p Time.new(2015, 3, 6)
some_date = Time.new(2015, 3, 6, 16, 51, 34)
p some_date

p today.month
p today.day
p today.year
p today.hour
p today.min
p today.sec

p today.yday  #the day of the year
p today.wday  #the day of the week

p today.monday?
p today.tuesday?

bd = Time.new(1985, 1, 31)
p bd
p bd.thursday?
p bd.dst?   #day light saving time
p today.dst?

#add or subtract time
start_of_year = Time.new(2016, 1, 1)
p start_of_year
p start_of_year + 60
p start_of_year + 60 * 60
p start_of_year + 60 * 60 * 3

def find_day_of_year_by_number(number)
  current_date = Time.new(2016, 1, 1)
  current_date + number * 24 * 60 * 60
end

p find_day_of_year_by_number(365)

#compare date
birthday = Time.new(2016, 4, 12)
summer = Time.new(2016, 6, 21)
independence_day = Time.new(2016, 7, 4)
winter = Time.new(2016, 12, 21)

p birthday < summer
p independence_day > winter

p independence_day.between?(summer, winter)

#convert time object to other object
someday = Time.new(2000, 2, 15)
p someday.to_s
p someday.ctime
p someday.to_a

p today.strftime("%B %d, %Y")

#for parsing from string to time we need to add a library
require 'time'

puts Time.parse("2016-01-01")
puts Time.parse("03-04-2000")
puts Time.strptime("03-04-2000", "%m-%d-%Y")
