=begin

P
  - given a string of words separated by spaces, write a method that takes this string of words
    and returns a string in which the first and last letters of every word are swapped
    - you may assume that every word contains at least one letter and that the string will
      always contain at least one word
    - you may assume that each string contains nothing but words and spaces
  - input: string
  - output: string with first/last letter of each word swapped
E
  - see book
D
  - arrays, baby
A
  - first, split string into words
    - if the result yields one element with a size of 1, return that element
  - next, reassign per how we've tested
  - next, rejoin with spaces
C
=end

def swap(string)
  string = string.split
  return string[0] if string[0].size == 1 && string.size == 1
  string.each { |word| word[0], word[-1] = word[-1], word[0] }
  string.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'