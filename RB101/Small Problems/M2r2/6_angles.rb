=begin

P
  - write a method that takes 3 angles of a triangle as args and returns a symbol
    for right, acute, obtuse, or invalid depending on the triangle type
  - input: three integers
  - output: symbol
  - note: inputs will always be integer values
  - note: arguments are always representing degrees per angle
  - note: any angle == 0 or angle sum not 180 == invalid
E
  - see book
D
  - array, again?
A
  - set as array
  - set invalid return
  - set other returns...
C
=end

def triangle(s1, s2, s3)
  angles = [s1, s2, s3].sort
  return :invalid if angles.any?(0) || angles.sum != 180
  angles.max == 90 ? :right : (angles.max > 90 ? :obtuse : :acute)
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid