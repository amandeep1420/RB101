=begin

P
  - write a method that returns an array that contains every other element of an 
    Array Argument. the values in the returned list should be those values that are in the 
    1st, 3rd, 5th, and so on elements of the arg array.
  - note: empty array should return empty array
  - note: elements can be anything
  - note: returns 'an' array; do not mutate original
E
  - see book
D
  - arrays
A
  - we can use an iteration method; I will use select
  - select all elements from arg that have an even index and return
C
=end

def oddities(arr)
  arr.select { |element| arr.index(element).even? }
end


p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []