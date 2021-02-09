=begin

P
  - input: an integer
  - output: boolean
  - write a method that takes one integer arg and returns a boolean based on whether the integer's absolute value is odd
  - note: integer may be positive, negative, or zero
  - note: assume that arg is a valid integer value
  - note: integers are all whole numbers
E
  - see book
D
  - irrelevant
A
  - find absolute value of integer
  - call method to check whether return value of above is odd
  - can't use odd or even
C

=end

def is_odd?(int)
  int.remainder(2) != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)  