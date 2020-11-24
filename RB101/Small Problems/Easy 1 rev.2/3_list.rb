# my answer:

def digit_list(num)
  num.to_s.split("").map { |digit| digit.to_i }
end 

  
=begin
PEDAC

Problem
- input: integer
- output: array of integer
- summary: write a method that takes a number and returns an array of the digits in that number
Examples
- see book
Data structure
- number, array
Algorithm
- define a method that takes one integer as argument
- convert integer to string, split into array of individual strings of each digit, assign result to variable
- iterate through array to convert back to integers
- return array
Code
- do it

refactored - no need to assign return value to variable if method calls are all chained on one line

=end

# my solution was even better the second time through :)

# methods to remember:

# .chars: returns each character in a string as elements of an array
# .digits: returns each digit of an integer as elements of an array, reversed
# .reverse: returns an array with the elements in reverse order