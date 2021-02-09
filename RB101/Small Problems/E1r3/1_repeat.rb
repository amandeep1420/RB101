=begin

P
  - input: a string and an integer
  - output: strings based on integer
  - write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates
  - note: each string outputted is on a new line
  - note: assume integer is positive
  - note: example string only has word characters
  - note: case irrelevant
E
  - see book
D
  - string, integer
  - no storage structure needed
A
  - relevant method: puts
  - repeat puts invocation 3 times using string passed in as arg
C

=end

def repeat(str, int)
  int.times { puts str }
end

repeat('Hello', 3)