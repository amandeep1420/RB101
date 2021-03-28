=begin

P
  - create a simple mad-lib program that prompts for a noun, a verb, an adverb, 
    and an adjective and injects those into a story that you create
  - input: various strings from user
  - output: formatted string
  - note: no edge cases to consider at this time based on cursory interpretation
E
  - see book
D
  - strings
A
  - create prompt
  - store variable for each prompt
  - use interpolation to reference vars in returned string
C
=end

puts ">> Enter a noun:"
noun = gets.chomp

puts ">> Enter a verb:"
verb = gets.chomp

puts ">> Enter an adjective:"
adjective = gets.chomp

puts ">> Enter an adverb:"
adverb = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? Wow!"