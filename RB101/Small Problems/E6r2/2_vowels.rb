=begin

P
  - write a method that takes an array of strings and returns an arry of the 
    same string values with all vowels removed
  - input: a string containing letters and spaces
  - output: a string with all vowels removed
  - note: book does not specify mutation
  - note: vowels are a, e, i, o, u
  - note: method must be case insensitive
E
  - see book
D
  - arrays, baby
A
  - remember: input is already an array
  - need to iterate over each array element, transforming them
  - first, we will call #map (yes, I know we shouldn't use specific methods here)
  - split each word
  - check each letter; delete matching letters
    - we determined a method to use via irb testing
  - return transformed array
C
=end

def remove_vowels(array)
  array.map { |word| word.delete("AEIOUaeiou") }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# our solution basically copied the book, nice! maybe we're not as 
# hopeless as we thought in terms of catching up? <:D