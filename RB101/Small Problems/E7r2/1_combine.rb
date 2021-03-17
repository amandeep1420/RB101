=begin

P
  - write a method that combines two arrays passed in as args
    and returns a new array that contains all elements from both array args
    with the elements taken in alternation
  - input: two arrays
  - output: combined array
  - note: arrays are non-empty and have same number of elements
E
  - see book
D
  - arrays
A
  - 
C
=end

def interleave(arr1, arr2)
  arr1.each_with_object([]) { |el1, arr| arr << el1 << arr2[arr1.index(el1)] }
end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']