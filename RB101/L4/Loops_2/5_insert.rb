numbers = []

loop do
  puts "Enter any number:"
  inputs = gets.chomp.to_i
  
  numbers << inputs
  break if numbers.length == 5
end

puts numbers

# correct. they used push. I like .length better than .size for some reason.