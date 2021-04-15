=begin

P
  - create a method that takes two integers as args. the first arg is a count,
    the second is the first number of a sequence that your method will create.
    method should return an array that contains the same number of elements as
    the count arg, while the values of each element will be multiples of the 
    starting num
  - input: two integers
  - output: array
  - note: count arg will always be 0 or greater
  - note: starting num can be any integer (including negative or zero)
  - note: if count is 0, return 0
E
  - see book
D
  - array
A
  - range from 1..count
  - transform
    - first number * element
C
=end

def sequence(count, start)
  (1..count).map { |num| start * num }
end

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []