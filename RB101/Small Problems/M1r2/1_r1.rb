=begin

P
  - write a method that rotates an array by moving the first element to the end 
    of the array. the original array should not be modified
  - input: array
  - output: new array
E
  - see book
D
  - array
A
  - use array reference
C
=end

def rotate_array(array)
  [array[1..-1], array[0]].flatten
end

def rotate_string(string)
  rotate_array(string.split('')).join
end

def rotate_integer(int)
  rotate_array(int.digits.reverse).reduce { |num, digit| (num * 10) + digit }
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

p rotate_string('cat') == 'atc'
p rotate_integer(1234) == 2341