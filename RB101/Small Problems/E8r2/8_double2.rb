=begin

P
  - write a method that takes a string and returns a new string in which every 
  consonant is doubled. vowels, digits, punc, whitespace shouldn't be doubled.
  - input: string
  - output: new string
  - note: needs to be case insensitive
E
  - see book
D
  - strings
A
  - we'll follow a similar format to the last problem
  - first, split the string
  - next, transformations for each char:
    - is it a letter, and 
      - is it not a vowel?
        - if so, double it
        - if not, return just the char itself
  - at the end, join the chars
C
=end

def double_consonants(string)
  string.split('').map { |char| char =~ /[a-z&&[^aeiou]]/i ? char * 2 : char }.join('')
end

# let's try without regex
# we already viewed solutions; we'll save and try again a different day

CONSONANTS = 

p double_consonants('String') #== "SSttrrinngg"
p double_consonants("Hello-World!") #== "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
    
# didn't know that you could use && within regex classes
# didn't know that the order mattered [a-z&&[^aeiou]] worked, but [^aeiou&&[a-z]] didn't...the second one doubled the symbols as well