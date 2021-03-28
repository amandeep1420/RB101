=begin

P
  - write a method that takes an array of numbers and returns the sum of the sums
    of each leading subsequence for that array
  - input: array with integers
  - output: integer
  - note: array will always contain at least one integer
  - note: zero not given in examples as valid element w/in array arg
  - note: note...
E
  - see book
D
 - array
A
  - set var to equal length of element reference
  - set storage var for sums
  - loop
    - is element reference var greater than array size?
      - if yes, break
      - if no, add 1 and add sum of reference to storage var
    -end
C
=end

def sum_of_sums(array)
  total = 0
  ref_length = 1
  until ref_length > array.size
    total += array[0, ref_length].sum
    ref_length += 1
  end
  total
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35