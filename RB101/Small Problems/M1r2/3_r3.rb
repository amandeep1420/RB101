=begin

P
  - write a method that takes an integer arg, and returns the max rotation of that
    arg. see book for explanation.
  - input: integer
  - output: rotated integer
  - note: don't need to handle consecutive zeroes
  - note: input will never be empty
E
  - see book
D
  - array
A
  - convert num to string
  - split into digits
  - counter var to track index
  - until counter == digit array size
    - delete digit at specified index, then append to end
    - increment counter by 1
  - join digit array and convert to num
C
=end

def max_rotation(integer)
  integer_digits = integer.to_s.split('')
  index = 0
  until index == integer_digits.size
    integer_digits << integer_digits.delete_at(index)
    index += 1
  end
  integer_digits.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845