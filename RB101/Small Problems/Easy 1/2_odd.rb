# let's try using PEDAC for everything from now on - even if it's trivial.

# write a method that takes any number and returns true if the number's absolute value is odd.

# examples (from book):
=begin
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
=end

# input is an integer, output is a boolean.
# cannot use .odd? or .even?
# just needs to return, examples use puts

# algorithm...

# found a method for absolute values (just returns, not destructive) - would've just written out longhand code to reverse the sign if needed otherwise.
# first change input to absolute, then evaluate whether modulo returns 0 or 1

def is_odd?(number)
  number.abs % 2 != 0 ? true : false 
end 

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

