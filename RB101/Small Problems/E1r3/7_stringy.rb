=begin

P
  - write a method that takes a positive integer and returns a string of alternating
    1s and 0s based on the integer, always starting with 1. the length of the string
    should match the given integer
  - input: positive integer
  - output: string
  - note: integers, not floats
  - note: always positive
E
  - see book
D
  - irrelevant
A
  - need to iterate based on integer
  - need a way to alternate the character being added - must be a string
    - we'll use an array
  - first, let's establish iteration
  - we'll use an index var to reference the desired string
  - then we'll change it after pushing the referenced string to the storage var
  
C
=end

def stringy(int, start=1)
  str, chars, idx = '', ['0', '1'], start
  int.times do 
    str << chars[idx]
    idx == 0 ? idx += 1 : idx -= 1
  end
  str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
    
    
# "number = index.even? ? 1 : 0"

# Assignment is being used in the ternary operator condition; I believe this is a typo.