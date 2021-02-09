=begin

P
  - write a method that takes one arg, a positive integer, and returns a list od the digits in the number
  - input: integer
  - output: array
  - note: no observable edge cases based on criteria
E
  - see book
D
  - irrelevant
A
  - split number into array of digits using preferred method
  - not good to explicitly list methods in PEDAC but I'm gonna
  - .digits.reverse
C

=end

def digit_list(num)
  num.digits.reverse
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]          