=begin

P
  - write a method that returns true if the string passed in as an arg is a 
    palindrome, false otherwise. 
  - input: string
  - output: boolean
  - note: must be case insensitive
  - note: must only count alphanumerics
E
  - see book
D
  - strings
A
  - 
  
=end

require 'pry'

VALID = ('A'..'Z').to_a + ('a'..'z').to_a + ('0'..'9').to_a

def real_palindrome?(string)
  string = string.downcase.delete("^a-z0-9")
  string == string.reverse
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false