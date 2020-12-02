# my solution:

=begin

Problem
  - write a method that takes one integer and returns a string of alternating 1s and 0s; the length of the string should match the integer
  - input: integer
  - output: string
  - will never be zero (positive integer)
Examples
  - puts stringy(6) == '101010'
  - puts stringy(9) == '101010101'
  - puts stringy(4) == '1010'
  - puts stringy(7) == '1010101'
Data
  - integer, string
Algorithm
  - pass in integer to method
  - initialize empty string
    - attempted to pass integer into string w/in irb; bad solution, convert to string at end
  - restart algorithm;
  - create method that takes one argument
  - initialize empty variable for storage
  - initialize empty counter variable
  - create loop that passes one, increments counter/checks to break, passes 0, increments counter/checks, ad infinitum
  - convert storage variable to string on last line for return
  - revision; declare storage variable as empty string, push strings onto end via <</shovel (cannot use w/ nil class) 
Code

=end 

def stringy(integer, d = 1)
  
  output = ""
  counter = 0
  
  if d == 1
    loop do
      output << "1"
      counter += 1
      break if counter == integer
      output << "0"
      counter += 1
      break if counter == integer
    end 
  else
    loop do
      output << "0"
      counter += 1
      break if counter == integer
      output << "1"
      counter += 1
      break if counter == integer
    end 
  end 
  
  output
end 

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(6, d=0) == '010101'
puts stringy(9, d=0) == '010101010'

# this works!

# book solution is so much better, lol. I'll get there someday >:)

