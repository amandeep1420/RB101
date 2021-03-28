=begin

P 
  - write a method that takes an array of integers as input, multiples all the 
    numbers together, divides the result by the number of array elements, and 
    then prints the result rounded to 3 decimal places. 
  - input: array of integers
  - output: float
  - note: array is never empty
  - note: array is never nested
  - note: all example arrays use integers
E
  - see book
D
  - arrays
A
  - reduce array down with multiplication
  - divide by size of array converted to a float
  - print with formatting..
C
=end

def show_multiplicative_average(array)
  format("%.3f", array.reduce(:*) / (array.size.to_f))
end
  
p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667