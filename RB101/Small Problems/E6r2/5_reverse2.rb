=begin

P
  - write a method that takes an array and returns a new array with the 
    elements of the original array in reverse order. do not modify
    the original array.
  - input: array
  - output: new array
  - note: may not use Array#reverse/reverse! or method from prior problem
  - note: input array may contain integers, strings, nothing, etc.
E
  - see book
D
  - arrays
A
  - need to iterate over entire array
  - need to return new object
  - iterate over array, pushing each element to front of array
C
=end

def reverse(array)
  array.each_with_object([]) { |el, arr| arr.unshift(el) }
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]   

