# my answer:

=begin

Problem
  - write a method that takes two arguments, an integer and a boolean, and returns half the integer if true or zero if false.
  - inputs: integer, boolean
  - output: integer
  - always positive integers inputted
  - always whole integers inputted
Examples
  - puts calculate_bonus(2800, true) == 1400
  - puts calculate_bonus(1000, false) == 0
  - puts calculate_bonus(50000, true) == 25000
Data
  - integers, booleans
Algorithm
  - define a method with two parameters
  - evaluate whether the boolean is true or false
    - write subsequent code telling the method what to do depending on the boolean
  - return the aforementioned evaluation as the last line
Code

=end 

def calculate_bonus(integer, boolean)
  boolean == true ? integer * 0.5 : 0
end 

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

# >:) 

# JOIFEJFOIWEJFOWMNLAFPWRF their solution was still more elegant than mine, haaaaaaaaaaaa! what a world :')
# we both used ternary operators, though, which is good!!


