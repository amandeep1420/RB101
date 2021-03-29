=begin

P
  - write a method that takes a string as an arg, and returns an array that 
    contains every word from the string - to which you have appended a space 
    and word length. you may assume that words in the string are separated by 
    exactly one space, and that any substring of non-space chars is a word
  - input: string
  - output: array
  - note: empty string is valid input, should return empty array
E
  - see book
D
  - array
A
  - first, split string by space
  - next, transform each element
    - for each element, find the length and append to element with a space
C
=end

def word_lengths(string)
  string.split(' ').map { |word| word + " " + word.size.to_s }
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []