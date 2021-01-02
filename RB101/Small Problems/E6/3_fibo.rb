=begin
Problem
  - input: num
  - output: a number
  - input is desired number of digits for first instance of fibonacci number w/ said number of digits
  - output is index of said number
Examples
  - see book
  - edge cases....negatives, less than one, etc. book said input will always be >= 2
Data structure
  - wants index, so array must be used
  - likely going to have to generate array of fibonacci numbers
Algorithm
  - declare fibonacci array with [1, 1] so we have a starting point (per fib definition)
  - start a loop
    - loop takes array[-1] and array [-2], adds them together and pushes to array
    - return array.index(array.last) when array.last.digits.length == digits
Code
=end

def find_fibonacci_index_by_length(digits)
  fib_array = [1, 1]
  until fib_array.last.digits.length >= digits
    fib_array << fib_array[-1] + fib_array[-2] 
    puts fib_array[-1]
  end
  fib_array.index(fib_array[-1]) + 1
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847









  