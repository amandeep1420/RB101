# my answer:

=begin

Problem
  - write a method that takes a positive integer and returns the sum of its digits
  - input: integer
  - output: integer
...
=end

def sum(integer)
  integer.to_s.split.to_i.to_a.sum
end 

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# I have spent over 40 minutes trying to come up with a slick, one-line solution.
# I am not about to give up yet.

# solving this would be easy if I could use looping constructs. grr.

# I give, but I'm done for today.