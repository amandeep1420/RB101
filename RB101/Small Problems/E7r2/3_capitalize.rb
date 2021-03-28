=begin

P
  - write a method that takes a single string arg and returns a new string that
    contains the original value of the arg with the first char of every word
    capitalized and all other letters lowercase
  - input: string
  - output: new string
  - note: may assume that words are any sequence of non-blank chars
E
  - see book
D
  - strings, arrays likely
A
  - set var equal to split input string (split by spaces)
  - if first char of input string is a letter, capitalize it
  - rejoin split string with spaces
C
=end

def word_cap(str)
  str.split.map { |word| ('a'..'z').cover?(word[0]) ? word.capitalize : word }.join(' ')
end


# book solution below

def word_cap(string)
  string.split.map(&:capitalize).join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


# String#capitalize works if the first character isn't a letter....d'oh
# we probably knew this at some point

