def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(integer, n)
  array = integer.to_s.chars
  array[-n..-1] = rotate_array(array[-n..-1])
  array.join.to_i
end

=begin

P
  - input: array
  - output: array (state of original intact, implied per problem set)
  - write a method that returns the maximum rotation of an integer
  - do not have to handle zeroes
E
  - see book
D
  - arrays
A
  - our current method rotates based on '-n'
  - we want to rotate every single digit, starting from the first
  - what happens when we iterate over the original array, passing in each element,
    and reassigning the array to itself each time via map!
C
  - let's go
=end

# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end

# def rotate_rightmost_digits(integer, n)
#   array = integer.to_s.chars
#   array[-n..-1] = rotate_array(array[-n..-1])
#   array.join.to_i
# end

# def max_rotation(integer)
#   n = integer.to_s.size
#   new_integer = []
#   n.times do
#     new_integer = rotate_rightmost_digits(integer, n)
#     n -= 1
#   end
#   new_integer
# end

# puts max_rotation(735291)

# def max_rotation(integer)
#   array = integer.to_s.chars
#   n = array.size
#   until n == 1
#     array << array.delete_at(-n)
#     n -= 1
#   end
#   array.join.to_i
# end

# puts max_rotation(735291) == 321579
# puts max_rotation(3) == 3
# puts max_rotation(35) == 53
# puts max_rotation(105) == 15 # the leading zero gets dropped
# puts max_rotation(8_703_529_146) == 7_321_609_845

# YOOOO - look at the downto method RIGHT NOW

# recreate book solution with down_to

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(integer, n)
  array = integer.to_s.chars
  array[-n..-1] = rotate_array(array[-n..-1])
  array.join.to_i
end

def max_rotation(integer)
  digit_count = integer.to_s.size
  digit_count.downto(2) do |n|
    integer = rotate_rightmost_digits(integer, n)
  end
  integer
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845