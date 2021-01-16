=begin
P
  call the rotate_rightmost_digits method repeatedly until the last number is reached
A
  we need a looping mechanism
  what's the break condition here? until n == 1, I'd say
C
=end


def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(integer)
  n = integer.digits.size
  until n == 1
    integer = rotate_rightmost_digits(integer, n)
    n -= 1
  end
  integer
end

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

def max_rotation(number)
  counter = 0
  array = number.digits.reverse

  until counter == array.size
    array << array.delete_at(counter)
    counter += 1
  end

  array.join.to_i 
end


# further exploration

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(array, n)
  array[-n..-1] = rotate_array(array[-n..-1])
  array
end

def max_rotation(number)
  all_digits = number.to_s.chars
  size = all_digits.size
  loop do
    all_digits = rotate_rightmost_digits(all_digits, size)
    size -= 1
    break if size == 0
  end
  all_digits.join.to_i
end