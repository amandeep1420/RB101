=begin

P
  - write a method that takes a string and returns a new string in which every character is doubled
  - input: string
  - output: new string
  - note: string may be empty
E
  - see book
D
  - string
A
  - split string into chars
  - transform resultant array elements into double
  - join
C
=end

def repeater(string)
  string.split('').map { |char| char * 2 }.join('')
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''