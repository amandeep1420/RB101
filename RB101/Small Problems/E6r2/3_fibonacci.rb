=begin

P
  - write a method that calculates and returns the index of the first fibonacci
    number that has the number of digits specified as an arg
  - input: integer representing number of digits
  - output: index of first fib number with specified number of digits
  - note: index of first fib num is 1, not 0
  - note: positive integers used as input
  - note: may assume arg is always greater than or equal to 2
E
  - see book
D
  - array? or a looping mechanism with a counter..would be easier but less elegant
A
  - 
  
C
=end

def find_fibonacci_index_by_length(count)
  fibs = [1, 1]
  index = 2
  until fibs[1].to_s.size == count
    fibs[0], fibs[1] = fibs[1], fibs.sum
    index += 1
  end
  index
end

p find_fibonacci_index_by_length(100)