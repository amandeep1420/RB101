=begin

P
  - write a method that takes a positive integer (n) and displays a right 
    triangle whose sides each have n asterisks
  - input: integer
  - output: right triangle in terminal output
E
  - see book
D
  - irrelevant
A
  - need a loop
  - 
C
=end

def triangle(num)
  (1..num).each { |stars| puts ("*" * stars).rjust(num) }
end

triangle(9)