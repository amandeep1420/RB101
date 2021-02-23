=begin

P
  - write a method that takes a string with one or more space separated
    words and returns a hash that shows the number of words of different sizes
  - input: string with words consisting of various characters
  - output: hash with counts of various word sizes
  - note: words are any string of chars that don't include a space
  - note: empty string is valid input and should return empty hash
E
  - see book
D
  - array, hash
A
  - first, split string into words
  - next, create a hash with a default value
  - next, iterate through words array, adding one to total of each 'word size'
  - not bad, amandeep
C
=end

def word_sizes(str)
  str.split.each_with_object(Hash.new(0)) { |word, hash| hash[word.size] += 1 } 
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}