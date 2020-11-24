# my answer:

def stringy(integer)
  
  counter = integer
  
  string = ''
  
  loop do
    break if counter == 0
    string << '1'
    counter -= 1
    break if counter == 0
    string << '0'
    counter -= 1
  end
  
  string
end 

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# I wrote the SAME EXACT SOLUTION the second time around, heh.





=begin

PEDAC

Problem
- input: positive integer
- output: string of 1s and 0s
- summary: write a method that takes an integer and returns a string of 1s and 0s, with the length matching the integer value
Examples
- see book
Data
- explained
Algorithm
- define method that takes one argument
- set counter variable equal to integer
- set empty string
- create loop that evaluates for zero equivalency; if higher than zero, pushes a '1' to string and subtracts 1 from counter
- rechecks, then pushes a '0', ad nauseam, until 0 equivalence <----- how were you planning to 'recheck?', eh?
- need a large loop with multiple break checks
- break
- returns string at end
=end


