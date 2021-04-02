=begin

P
  - write a method that computes the diff between the square of the sum of the 
    first n positive integers and the sum of the squares of the first n 
    positive integers...
  - input: an integer
  - output: an integer
  - note: all examples use positive integers
E
  - see book
D
  - range...
A
  - establish array of values

C
=end

def sum_square_difference(int)
  (((1..int).to_a).sum)**2 - ((1..int).to_a.map { |int| int**2 }.sum)
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150