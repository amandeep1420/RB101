=begin

P
  - write a method that returns the next to last word in the string passed in
  - input: string
  - output: string
  - note: words are any sequence of non-blank chars
  - note: may assume that input string will always contain at least two words
E
  - see book
D
  - arrays
A
  - split string
  - use element reference to reference second-to-last element
C
=end

def penultimate(string)
  string.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'