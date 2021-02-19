=begin

P
  - write a method that determines and returns the ASCII string value of a string
    that is passed in as an argument. the ASCII string value is the sum of the ASCII
    values of every character in the string
  - input: string
  - output: integer
  - note: use String#ord to get value for a single character
E
  - see book
D
  - arrays, baby
A
  - first, split string into chars array
  - next, iterate to transform each char into val
  - finally, sum up array vals
C
=end

def ascii_value(string)
  total = string.chars.map { |char| char.ord }.reduce(:+)
  total == nil ? 0 : total
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# TIL Array#sum returns zero if the array is empty