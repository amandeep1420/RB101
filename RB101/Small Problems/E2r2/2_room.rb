=begin

P
  - build a program that asks for the length and width of a room in meters and 
  then displays the area of the rom in both square meters and square feet
  - input/output:  rolling inputs for length and width, output is string with results concatenated
E
  - see book
D
  - irrelevant
A
  - first, ask for length in meters and store
  - next, ask for width in meters and store
    - confirmed that square feet is just square meter total * 10.7639
  - finally, write output string w/ concatenation for both values
C
=end

SQM_TO_SQF = 10.7639

def how_big_is_the_room
  puts ">> Enter the length of the room in meters:"
  length = gets.chomp.to_i
  
  puts ">> Enter the width of the room in meters:"
  width = gets.chomp.to_i
  
  area = (length * width).to_f
  puts "The area of the room is #{area} square meters (#{area * SQM_TO_SQF} square feet)."
end
  
  
how_big_is_the_room

# did not do F.E., just basic stuff