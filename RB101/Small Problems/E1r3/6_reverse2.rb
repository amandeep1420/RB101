=begin

P
  - write a method that takes a string and returns the string with words that 
    contain five or more characters reversed
  - input: string containing one or more words
  - output: string
  - note: string will consist of only letters and spaces
  - note: spaces should be included only when more than one word is present
  - note: no specification made regarding mutation
  - note: no need for case consideration
E
  - see book
D
  - irrelevant
A
  - first, split string using ' ' as arg
  - next, iterate over each array element, transforming based on length
  - finally, recombine using space as arg
C
=end

def reverse_words(str)
  str.split.map { |word| word.size >= 5 ? word.reverse : word }.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
  
