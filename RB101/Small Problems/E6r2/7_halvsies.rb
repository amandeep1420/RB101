=begin
P
  - write a method that takes an array as an arg and returns two arrays
    nested within a larger array that contian the first half and second half
    of the array passed in. 
  - input: an array containing any number of elements
  - output: pair of nested arrays contianing elements
  - note: if input array contains an odd number of elements, the middle element
          should be placed in the first array
E
  - see book
D
  - arrays, baby
A
  - the method has been decided already (Enumberable#partition)
    - block criteria?
    - 
C
=end

def halvsies(arr)   
  arr.partition { |el| arr.index(el) < (arr.size.to_f / 2) }
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]