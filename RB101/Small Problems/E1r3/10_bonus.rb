=begin

P
  - write a method that takes two args - a positive integer and a boolean - and
    calculates the bonus for a given salary. if the boolean is true, the bonus 
    should be half of the salary; if the boolean is false, the bonus should be 0
  - not much to note here
E
  - see book
D
  - irrelevant
A
  - conditional that returns either half of the integer arg or 0 depending on boolean
C

=end

def calculate_bonus(int, boolean)
  boolean ? int / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000