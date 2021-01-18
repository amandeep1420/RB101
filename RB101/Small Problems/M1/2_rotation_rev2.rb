=begin

P
  - inputs: array, integer
  - output: new array (as implied by our previous method)
    - note: problem doesn't actually specify this
  - write a method that can rotate the last 'n' digits of a number
E
  - see book
D
  - array input, output; no further data structure considerations
    at this time
A
  - our prior method rotates out the first digit and makes it last
  - we want to change this; make the numbers adjustable
  - element reference, but done differently
  - we use reference twice to establish a safe range and a moved range, yes?
  - so...
  - the problem specifies the last 'n' digits; the starting point will
    always be element at index -1 up to -n (-1 to -1 returns the last digit, for example)
  - could slice it off and append it, 
  - could even do it the long way; iterate n times, popping each time and appending to placeholder, 
    then concatenating the two arrays at the end
  - I'm a little surprised I had such a tough time with this the first time around; I think working out 
    actually helps considerably
C
  - let's try the short way
  - how do we establish safe range
  - I misunderstood the problem; should've read examples
  - so, -n needs to be pushed to the back
  - going to do this the long way first, without the original method
  - so
  - clone array, set to variable
  - use array#push with array#delete_at(-n)
  - oops; this is an integer
  - I think I remember now; convert to string array to make it easier to work with
  - set that to a variable
  - 
=end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(integer, n)
  array = integer.to_s.chars
  array[-n..-1] = rotate_array(array[-n..-1])
  array.join.to_i
end
