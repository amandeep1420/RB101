=begin

P
  - write a method that takes an integer arg and returns an array of all integers
    , in sequence, between 1 and the arg
  - input: integer
  - output: array
  - note: arg is always a valid integer greater than 0
E
  - see book
D
  - too easy
A
  - create range from 1 to arg
  - convert to array
C
=end

def sequence(int)
  int > 0 ? (1..int).to_a : (int..1).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-5) == [-5, -4, -3, -2, -1, 0, 1]