=begin

P
  - write a method that takes a string and returns a new string in which every 
    consonant char is doubled. vowels, digits, punc, whitespace should note be
    doubled
  - input: string
  - output: new string
  - note: case insensitive
E
  - see book
D
  - array
A
  - nah, we did regex
  - split string into chars
  - transform
    - if match regex, double
    - else, char
  - join
C
=end

def double_consonants(str)
  str.chars.map do 
    |char| ( char =~ /[^aeiou]/i && char =~ /[a-z]/i ) ? char * 2 : char 
  end.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""