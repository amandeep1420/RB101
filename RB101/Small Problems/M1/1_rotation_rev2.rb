=begin
P
  - input: array
  - output: new array
  - write a method that rotates an array by moving the first element to the end of the array;
    the original array should NOT be modified
E
  - see book; should not depend on element type
D
  - array input, output..
A
  - use element reference and concatenation; see if that works
C
  - let's go
=end

def rotate_array(array)
  array[1..-1] + [array[0]] # doing this on purpose to see what happens - error should pop regarding type mismatch
end

puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]                 # => true

# we remembered the book solution; I think that's good on some level, tbh
