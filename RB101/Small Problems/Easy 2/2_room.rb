SQFEET_TO_INCHES = 144
SQFEET_TO_CENT = 929.03


puts "Enter the length of the room in feet:"
length = gets.chomp.to_f

puts "Enter the width of the room in feet:"
width = gets.chomp.to_f

area = length * width

puts "The area of the room is #{area} square feet."
puts "The area of the room is #{area * SQFEET_TO_INCHES} square inches."
puts "The ara of the room is #{area * SQFEET_TO_CENT} square centimeters."

# mostly right - should've converted inputs to floats.
# not necessary to declare empty variables beforehand in this case.
