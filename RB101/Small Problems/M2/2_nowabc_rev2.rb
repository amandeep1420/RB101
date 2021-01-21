=begin

P
  - input: a word
  - output: boolean based on block usage
  - write a method that reutns true if the word passed in as an argument can be
    spelled from a set of given blocks without reusing a block: false, otherwise
  - note: must be case-insensitive
E
  - see book
D
  - string input
  - let's use an array
A
  - first, create array of strings of each block pair
  - then, iterate over block array
    - return false if count of any block from string.fixcase == 2
  - return true at end otherwise

=end


def block_word?(string)
  blocks = %w(bo xk dq cp na gt re fs jw hu vi ly zm)
  blocks.each { |block| return false if string.downcase.count(block) == 2 } # this misses if a string uses 
  true                                                                      # both chars more than once
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true