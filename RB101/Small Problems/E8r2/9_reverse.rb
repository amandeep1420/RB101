=begin

P 
  - write a method that takes a positive integer as an arg and returns that number with
    its digits reversed
  - input: integer
  - output: integer, reversed
  - note: zero not valid input based on examples, explanation
  - note: single digits are valid input
E
  - see book
D
  - integers
A
  - use a method to get individual numbers in array format
    - going to use #digits, which also reverses them
  - join them with string method, then convert back to integer
C
=end

def reversed_number(integer)
  integer.digits.join.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1