loop do
  puts "Should I stop looping?"
  answer = gets.chomp
  break if answer == 'yes'
end

# correct. they included an error output in case 'yes' isn't inputted.