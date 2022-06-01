def fizz_buzz(number)
  i = 1
  until i > number
    if i%15 == 0
      puts "#{i}:Fizzbuzz"
    elsif i%3 == 0
      puts "#{i}:Fizz"
    elsif i%5 == 0
      puts "#{i}:Buzz"
    end
    i+=1
  end
end

fizz_buzz(20)
