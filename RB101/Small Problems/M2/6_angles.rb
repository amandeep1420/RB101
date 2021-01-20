=begin

P
  - inputs: whole integers
  - outputs: symbols
  - write a method that takes the 3 angles of a triangle and returns a symbol 
    depending on whether the triangle is a right, acute, obtuse, or invalid triangle
  - assume args are integers
  - args represent degrees
E
  - see book
D
  - like use an array
A
  - first, set args to array var
  
  
=end

def triangle(d1, d2, d3)
  angles = [d1, d2, d3]
  return :invalid if angles.sum != 180 || angles.any?(0)
  return :right if angles.any?(90)
  angles.map { |angle| angle < 90 }.any?(false) ? :obtuse : :acute
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid

# you can use a splat in the parameter portion of a meth def to gather all arguments into an array
# with the supplied parameter as the name of said array
# so def triangle(*angles)

# that's awesome