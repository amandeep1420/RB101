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


# def block_word?(string)
#   blocks = %w(bo xk dq cp na gt re fs jw hu vi ly zm)
#   blocks.each { |block| return false if string.downcase.count(block) == 2 } # this misses if a string uses 
#   true                                                                      # both chars more than once
# end

# puts block_word?('BATCH') == true
# puts block_word?('BUTCH') == false
# puts block_word?('jest') == true

=begin

P
  - input: a string with multiple words
  - output: string passed in, with all words transformed
  - write a method that takes a string and returns the string with 
    :the first and last character of each word unchanged
    :characters between the first and last character of each word sorted alphabetically
    :symbols remain in the same location (-',.) 
    :symbols cannot serve as a start or end point
  - note: case irrelevant
E
  - see prompt
D
  - likely using arrays here
A
  - first, we need to determine start and end points; we can create a loop to determine this
  - wait; multiple words, here; first, we need to split into an array of words
  - next, we iterate over array for transformation using map
    - within the block we pass to map, we need to do several things:
      - first, determine start and end points
  
  
=end

require 'pry'

SYMS = "-',."

def scramble_words(words)
  word_array = words.split
  word_array.map do |word|
    if word.delete(SYMS).size < 4
      word
    else
      letters = word.chars
      starter = 0
      ender = -1
      sym_hash = {}
      letters.each_with_index do |letter, idx|
        if SYMS.include?(letter)
          sym_hash[idx] = letter
          letters.delete_at(idx)
        end
      end
      # starter += 1 while SYMS.include?(word[starter])
      # ender -= 1 while SYMS.include?(word[ender])
      letters[(starter+1)..(ender-1)] = letters[(starter+1)..(ender-1)].sort
      if !sym_hash.empty?
        sym_hash.each do |idx, letter|
          letters.insert(idx, letter)
        end
      end
      letters.join
    end
  end.join(' ')
end

p scramble_words('-dcba')