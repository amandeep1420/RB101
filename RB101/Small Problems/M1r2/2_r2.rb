=begin

P
  - write a method that can rotate the last n digits of a number.
  - input: integer
  - output: rotated integer
  - note: rotating one digit results in the original number being returned
  - note: input is always a positive integer
E
  - see book
D
  - array
A
  - convert num to string
  - delete element at specified negative index, then append to end of array
  - convert back to integer
C
=end

def rotate_rightmost_digits(num, idx)
  num = num.to_s.chars
  num << num.delete_at(-idx)
  num.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917