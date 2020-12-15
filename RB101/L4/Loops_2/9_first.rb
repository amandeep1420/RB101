number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  
  if number_a == 5 || number_b == 5
    puts "5 was reached!"
    break
  end
end

# I did not use next like the book specified. try again

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  
  if number_a == 5 || number_b == 5
    puts "5 was reached!"
    break
  end
end

# what's the use. I already know they used next unless.

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  
  next unless number_a == 5 || number_b == 5
  
  puts "5 was reached!"
  break
end

# yep.

