=begin

P
  - write a method that takes two array args (in which each array contains a list
    of numbers) and returns a new array that contains the product of each pair
    of numbers from the args that have the same index. you may assume that the
    args contain the same number of elements
  - note: no empty arrays in example
  - note: no floats used as array elements
E
  - see book
D
  - arrays
A
  - 
=end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |pair| pair.reduce(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11])# == [27, 50, 77]