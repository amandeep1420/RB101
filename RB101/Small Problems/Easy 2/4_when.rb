require 'date'

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

age_difference = retirement_age - age

current_year = Date.today.year

puts "It's #{current_year}. You will retire in #{current_year + age_difference}."
puts "You only have #{age_difference} years of work to go!"

# basically the same as the book - just shuffled around where operations happened a bit.
# they used the Time class, which is automatically loaded from what I can tell.
# so Time.now.year instead of Date.today.year
# Huh.