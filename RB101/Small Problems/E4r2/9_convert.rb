=begin

P
  - write a method that takes a postive integer or zero and converts it to a 
    string representation
  - input: integer
  - output: string
  - note: cannot use conversion methods
  - note: zero is valid input
  - note: I think using the Integer#digits method would be cheating
E
  - see book
D
  - likely going to use an array for reference
A
  - first, declare array for integer conversion
  - next, find a way to iterate over each digit
    - we will divide by 10
    - need to store current num
    - we'll construct a loop for this
  
  
C
=end

def integer_to_string(int)
  ref = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
  string = ''
  loop do
    int, current_num = int.divmod(10)
    string.prepend(ref[current_num])
    break if int == 0
  end
  string
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
  
  
# we literally wrote the book solution, heh