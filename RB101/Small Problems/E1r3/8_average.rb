=begin

P
  - write a method that takes an array containing integers and returns the average
    of all number in the array. 
  - input: array of integers
  - output: integer
  - note: the array will never be empty
  - note: integers will always be positive
E
  - see book
D
  - irrelevant
A
  - sum contents of array
  - divide by number of elements in array
C
=end

def average(arr)
  (arr.reduce(:+).to_f) / (arr.size)
end

puts average([1, 6]) #== 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) #== 25
puts average([9, 47, 23, 95, 16, 52]) #== 40