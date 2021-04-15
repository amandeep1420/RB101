=begin

P
  - write a method that takes a string arg and returns a new string that contains
    the value of the original string with all consecutive duplicate chars collapsed
    into a single char
  - input: string
  - output: new string
  - note: assume chars means any string char
  - note: empty string should return empty string
  - note: no mention regarding case sensitivity
E
  - see book
D
  - string, will use array
A
  - split string into array
  - iterate over array, selecting chars
    - if next char is not equal to char, select it
  - join at end
C
=end

def crunch(str)
  str.chars.select.with_index { |char, idx| char != str[idx+1] }.join
end

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
