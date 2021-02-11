=begin

P
  - write a method that takes an array of numbers and returns an array with the 
    same number of elements, with each element being the running total from the original array
  - input: array
  - output: 'an array', new array
  - note: all numbers are positive integers
  - note: empty array is valid input
E
  - see book
D
  - arrays
A
  - declare variable to track sum
  - iterate over array, transforming each element to reflect running total
C
=end

# def running_total(arr)
#   sum = 0
#   arr.map { |num| sum += num }
# end

def running_total(arr)
  arr.map.with_index { |num, index| arr[0..index].reduce(:+) }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

# remember: _ to replace unused block params