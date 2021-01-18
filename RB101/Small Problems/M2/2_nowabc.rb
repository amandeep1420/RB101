=begin

P
  - input: string
  - output: boolean
  - you have a collection of word blocks; each block has two letters. write a method that returns true
    if the string passed in as an argument can be spelled with your word blocks. a word block may be used
    only once
E
  - see book
D
  - likely going to use a hash along with an array for the string chars
A
  create hash library with k-v pairs
  split string into array of chars
  
  
=end

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)
def block_word?(string)
  final_string = ''
  blocks = BLOCKS.clone.map(&:downcase)
  string.chars.map(&:downcase).each do |char|
    blocks.each do |block|
      if block.chars.include?(char)
        final_string << char
        blocks.delete(block)
      else
        next
      end
    end
  end
  final_string == string.downcase
end
        
puts block_word?('BATCH')
puts block_word?('BUTCH')
puts block_word?('jest')