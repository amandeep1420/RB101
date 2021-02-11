=begin

P
  - using the multiply method, write a method that computes the square of its arg
  - input: integer (positive + negative)
  - output/return: square of integer
E
  - see book
D
  - N/A
A
  - declare method w/ one param
  - inside, use multiply w/ param used twice
C
=end

def multiply(n1, n2)
  n1 * n2
end

def square(n1)
  multiply(n1, n1)
end

p square(5) == 25
p square(-8) == 64