=begin

P
  - write a method that displays a 4-pointed diamond in an n by n grid, where
    n is an odd integer that is supplied as an arg to the method.
    may assume that arg is always an odd integer.
  - input: odd integer
  - output: terminal output showing diamond
E
  - see book
D
  - n/a
A
  - two parts: building up, then building down
  - part 1: for each number in 1 to n, put n asterisks centered in n spaces if n is odd
  - part 2: for each number in n-1 to 1, put n asterisks centered in n spaces if n is odd
C
=end

def diamond(num)
  1.upto(num) { |line| puts (('*' * line).center(num)) if line.odd? }
  (num - 1).downto(1) { |line| puts (('*' * line).center(num)) if line.odd? }
end

# diamond(1)
# diamond(3)
diamond(9)