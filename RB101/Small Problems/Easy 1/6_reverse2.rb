# my answer:

=begin

Problem
  - write a method that takes a string (containing one or more words) and returns the string with words containing 5+ characters reversed.
  - strings only have letters and spaces
  - spaces only included when more than one word is present
Examples
  - puts reverse_words('Professional')          # => lanoisseforP
  - puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
  - puts reverse_words('Launch School')         # => hcnuaL loohcS  
Data
  - strings..
Algorithm
  - take string, split into array, evaluate each element for reversal individually, rejoin array into string
Code

=end 

def reverse_words(string)
  
  r1 = string.split.map do |word|
         if word.length >= 5 then word.reverse else word end
       end
       
  r1.join(' ')
  
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

# we have a solution!!

# I changed it up a bit after reading various solutions.