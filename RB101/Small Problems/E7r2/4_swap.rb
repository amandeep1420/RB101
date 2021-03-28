=begin

P
  - write a method that takes a string as an arg and returns a new string in 
    which every uppercase letter is replaced by its lowercase version and 
    vice versa. all other chars should be unchanged.
  - input: string
  - output: new string
  - note: cannot use String#swapcase
  - note: strings will not be empty per examples
E
  - see book
D
  - strings, possibly an array
A
  - split string
  - iterate over each char, checking if char == char.downcase and modifying
    accordingly (transforming)
  - join
C
=end

def swapcase(str)
  str.chars.map { |char| char == char.downcase ? char.upcase : char.downcase }.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'