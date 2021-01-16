# code from last problem: array[1..-1] + array[0]

=begin
P
  input: integer
  output: integer (mutation yes/no not indicated by examples)
  write a method that can rotate the last 'n' digits of a number
E
  see book
  note: n is an optional argument; when n=1, nothing should change
D
  integer in
  - convert to array for management
A
  - book suggested we should use code from last problem, so we will
  - going to use book solution as I think it'll be more helpful here
  - first, split integer into array of unmodified digits, and store that
  - establish a range to modify based on the n argument
  - maybe we can use similar format as earlier
  - next, find range to be modified using arguments, and store
  - just gonna go for it..
=end

def rotate(input)
  input[1..-1] << input[0]
end

def rotate_rightmost_digits(integer, n=1)
  digits = integer.digits.reverse
  unaffected_digits = digits[0..(digits.size) - (n + 1)]
  affected_digits = digits[(digits.size - n)..-1]
  rotated_digits = (digits[0] == affected_digits ? digits[0] : rotate(affected_digits))
  (unaffected_digits + rotated_digits).join.to_i
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

rotate_rightmost_digits(12345, 2)

# did not pass last test..........
# really, really struggled with this one/today in general - numerous silly mistakes
# what is going on?
# back for round two
# note: they converted the number to a string for ease of manipulation
# note: how do we call the last "n" elements of an array? array[-n..-1] yessss
# note: they called the elements to be replaced on the left side of an equals sign, then called the replacement method on the right side
# hmmmmmmmMMMMmMMmMMMMmmmmm