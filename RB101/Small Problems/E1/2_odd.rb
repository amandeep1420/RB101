Do this one again.

=begin
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

# ....book solution is simpler.
# see below:

def is_odd?(number)
  number % 2 == 1     # returned due to being last line in method + returns boolean due to operator
end 


# need to be careful not to overcomplicate things when attempting to use PEDAC. let's minimize its use to a degree for these initial problems.

# F.E. below:

def is_odd?(number)
  number.remainder(2).abs == 1        # I originally wrote this w/o the .abs method call; -17 returned false as a result due to the remainder being
end                                   # negative. 

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
