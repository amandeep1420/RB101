loop do
  number = rand(100)
  puts number
  
  break if (1..10).include?(number)
end

# correct, though they used the .between? method ----> if number.between?(0, 10)
# reviewing it now. Comparable.