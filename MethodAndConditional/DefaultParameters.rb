def make_phone_call(number, international_code = 1, area_code = 646)
  puts "number: #{international_code}-#{area_code}-#{number}"
end
make_phone_call(123456, 5, 999)
make_phone_call(1234545, 7)
make_phone_call(3454545435)
