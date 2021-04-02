=begin

P
  - write a method that takes the lengths of the 3 sides of a triangle as args
    and returns a symbol depending on whether the triangle is equilateral, 
    isosceles, scalene, or invalid
  - input: 3 integers representing the sides of the triangle
  - output: symbol
  - note: invalid = any side <= 0 OR sum of two shortest sides < longest side
  - note: floats are valid input
E
  - see book
D
  - array?
A
  - set sides to array and sort
  - case statement that returns symbols
  
C
=end

def triangle(s1, s2, s3)
  sides = [s1, s2, s3].sort
  case
  when sides.any?(0) || sides[0..1].sum < sides[2] then :invalid
  when sides.count(s1) == 3                        then :equilateral
  when sides.uniq.size == 2                        then :isosceles
  else                                                  :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

# this was longer than our first solution a few months ago...imagine that.