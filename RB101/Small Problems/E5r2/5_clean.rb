=begin

P
  - given a string that consists of lowercase words and non-alpha chars, 
    write a method that returns that string with all of the non-alpha chars
    replaced by spaces. if one or more non-alpha chars occurs in a row, 
    you should only have one space in the result (no consecutive spaces)
  - input: string with lowercase alphas, symbols, etc
  - output: fixed string
  - note: only one test case...
  - note: no defined edge cases
E
  - see book
D
  - strings, arrays...let's see
A
  - first, we need to filter out non-alpha chars
  - uh...i think we just solved it with one method
  - nope; anyways, we figured out how to swap via gsub; need to clean up spaces
  - 
C
=end
require 'pry'

def cleanup(string)
  string.gsub(/[^a-z]+/, ' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '

# or

ALPHA = ('a'..'z').to_a

def cleanup(string)
  string = string.split('').map { |char| ALPHA.include?(char) ? char : ' ' }
  string.each_with_object('') do |char, str|
    ALPHA.include?(char) ? str << char : (str[-1] == ' ' ? next : str << char)
  end
end

p cleanup("---what's my +*& line?") == ' what s my line '

  