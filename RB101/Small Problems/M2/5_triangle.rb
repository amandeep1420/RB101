=begin

P
  - input: 3 integers representing the sides of a triangle
  - output: symbol
  - write a method that takes the lengths of 3 sides of a triangle as args and 
    returns one of several symbols depending on the args
E
  - see book
D
  - integers, let's put them into an array
A
  - set var to contain array of inputted integers
  
  
  
=end

def triangle(n1, n2, n3)
  sides = [n1, n2, n3].sort
  return :invalid if sides.any?(0) || sides[0] + sides[1] < sides[2]
  return :equilateral if sides.all?(sides[0])
  sides.count(sides[0]) > 1 || sides.count(sides[1]) > 1 ? :isosceles : :scalene 
end
  
puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid