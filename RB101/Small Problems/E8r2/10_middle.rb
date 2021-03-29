=begin

P
  - write a method that takes a non-empty string arg and returns the middle 
    character/characters of the arg. if the argument has an odd length, 
    you should return exactly one char; if it's even, return the middle two.
  - input: string
  - output: new string representing middle char/chars
  - note: string will never be empty
  - note: string may include non-alphas
E
  - see book
D
  - string, arrays likely
A
  - first, determine reference methods needed
  - okay, done
  - ternary operator
    - if size is odd
      - reference string.size /2
    - if size is even
      - reference string.size /2 -1, length of 2
C
=end

def center_of(string)
  string.size.odd? ? string[string.size * 0.5] : string[string.size / 2 - 1, 2]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'

# we were about to solve this the same exact way as 3 months ago - is that good or bad?