=begin

P
  - write a method that takes a number as an arg; if arg is positive, return the 
    negative of that number; if negative or 0, return the original number
  - input: integer
  - output: integer
E
  - see book
D
  - integers
A
  - is the number greater than zero?
    - if yes, return the negative
    - if false, return the number
C
=end

def negative(num)
  num > 0 ? -num : num
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby

# their method

def negative(number)
  -number.abs
end

# superior because the desired result is always a negative or zero; zero can't be negative, so that's not an edge case
# nice