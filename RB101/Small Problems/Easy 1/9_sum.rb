# my answer:

=begin

Problem
  - write a method that takes a positive integer and returns the sum of its digits
  - input: integer
  - output: integer
...
=end
=begin
def sum(integer)
  integer.to_s.split.to_i.to_a.sum          # does not function
end 

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
=end
# I have spent over 40 minutes trying to come up with a slick, one-line solution.
# I am not about to give up yet.

# solving this would be easy if I could use looping constructs. grr.

# I give, but I'm done for today.

# writing a solution that uses looping constructs

def sum(integer)
 integer.to_s.split(//).map { |digit| digit.to_i }.inject(:+)
end 

puts sum(23) 
puts sum(496) 
puts sum(123_456_789) 

# split will automatically split based on empty space if no argument is given - NOT individual characters. whew, just breathe.

# I finally threw in the towel and used a looping construct - it took me a little while to realize that split wasn't the problem, *I* was.
# I refactored a bit, and came up with the above solution.

def sum(integer)
 integer.to_s.chars.map { |digit| digit.to_i }.inject(:+)
end 


# key takeaway: use .chars to automatically split a string into individual characters, or .split() to split based on certain criteria.
# key takeaway: see below..

number.map { |digit| digit.to_i}

is the same as 

number.map(&:to_i)


(&:to_i)

(&:to_i)

man, this is so weird...

def sum(num)
  num.digits.sum
end 

now THAT is a slick solution...man oh man.