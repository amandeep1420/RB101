=begin

P
  - write a method that takes a positive integer and returns the sum of its digits
  - input: integer
  - output: integer
  - note: always positive
E
  - see book
D
  - likely working with array here
A
  - get digits of integer
  - sum them
  - it's not good to go into this with specific methods in mind, but too late this time, lol
C
=end

def sum(int)
  int.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45