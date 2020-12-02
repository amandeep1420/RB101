Do this one again.

# my answer:

=begin

problem
  - input: positive integer
  - output: list of integers 
  - write a method that takes a positive number and returns a list of digits in the number
examples
  - test cases supplied
data structures
  - input is an integer
  - output is an array
- algorithm
  - method takes integer
  - method splits integer into digits
    - .split only works with strings..
  - declare variable, set variable to equal number.string.split
  - variable is now an array
  - run a method to convert each string integer back into an actual integer
- code

=end 

def digit_list(number)
  splitstringnum = number.to_s.split("")
  splitnum = splitstringnum.map do |stringnum|
               stringnum.to_i
             end 
  splitnum
end 

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

# all provided test cases return true.

# after several minutes and some testing, this is the solution I've found.

# my solution falls somewhere b/t the brute force and idiomatic solution.
# didn't even consider looping + unshifting...

# wait, my solution is almost exactly like the idiomatic solution - I was just unaware of the shorthand .map method, the (&to_i), and chars!!
# maybe we're actually doing alright, hehe ~_~

# so .chars returns an array of the characters in a string. nice.
# I don't quite understand why the Enumerable#map in the code uses () instead of curly braces, nor do I understand the &:to_i method call.
# guess we'll have to wait and see what they say about it.

def digit_list(number)
  number.to_s.split("").map do |stringnum|
    stringnum.to_i
  end 
end 


def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

puts digit_list(1234)
puts digit_list(333)

# this is my refactored version.