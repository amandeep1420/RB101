=begin

P
  - write a method that returns true if the word passed in as an arg can be 
    spelled from the given set of blocks, false otherwise
  - input: string
  - output: boolean
  - note: each block can only be used once
E
  - see book
D
  - nested array or hash
A
  - establish paired nested array structure within method
  - split string, then iterate
  - ...
  - trying to come up with a compact solution before moving on...
  - 
C
=end

def block_word?(string)
  pairs = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'], ['G', 'T'],
          ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'], 
          ['Z', 'M']]
  pairs.any? { |pair| return false if string.upcase.count(pair.join) > 1 }
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('bxo') == false


# MAKING AN ARRAY OF TWO-CHAR STRINGS IS SO MUCH BETTER WOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOW
# why did I make a paired array
# why
# BBBBBBBBBBBBBAAAAAAAAAAAAAAAAKKKKKKKKKKKKKKAAAAAAAAAAAAAAAAAAA