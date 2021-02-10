=begin

P
  - print all even numbers from 1 to 99, inclusive, to the console, 
    with each number on a separate line
  - no inputs, output already specified
  - note: opposite of last problem
E
  - none
D
  - range or array, take your pick - let's play with an array and try to 
    use select and make this kind of complex for giggles
A
  - create array from range
  - iterate over array, selecting even numbers
  - iterate over result array, printing each number
  - note: this is more complex than needed for fun
C
=end

(1..99).to_a.select do |num|
  num.even?
end.each { |num| puts num }

# yep

# these problems feel like a bit of a waste of time right now
# but I should do them just to make sure I don't have any holes in the very basics...
# bleh
