=begin

P
  - write a method that rotates an array by moving the first element to the end of the array;
    the original array should not be modified
  - input: array
  - output: new array
    - note: do not modify input array
    - note: single element array is valid input
E
  - see problem
D
  - arrays
A
  - invoke element reference to grab everything but first element
  - add return value of referencing first element to above
  - handle different types of objects:
    - case statement for return value of invoking #class method on input
      - when Array then same as above
      - when String then split into characters, apply above method, rejoin
      - when Integer then split into digits, apply above method, convert all to string, rejoin, convert back to integer
  
C
=end

def rotate_array(input)
  case input.class
  
  when [].class then input[1..-1] + [input[0]]
  when ''.class
    input = input.chars
    input = input[1..-1] + [input[0]]
    input('')
  when 0.class
    input = input.digits.reverse
    input = input[1..-1] + [input[0]]
    input.map! { |digit| digit.to_s }
    input.join('').to_i
  end
    
end

p rotate_array([1, 2, 3])
p rotate_array('laptop')
p rotate_array(12345)