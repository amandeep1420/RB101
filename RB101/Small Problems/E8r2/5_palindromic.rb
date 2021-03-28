=begin

P
  - write a method that returns a list of all substrings of a string that 
    are palindromic. the returns value should be arranged in the same sequence
    as the substrings appear in the string. duplicate palindromes should be 
    included multiple times.
  - input: string
  - output: array of substrings (palindromes)
  - note: may use method from previous problem
  - note: should be case sensitive
  - note: this would be very easy if we used the method from the last problem
    - but we're not going to do that
E
  - see book
D
  - strings, arrays, etc
A
  - first, split string into chars (I've intentionally been using #split instead of #chars since chars is very rigid
    - just like last time, we need a storage array; decide how to implement
  - we need to evaluate every single substring...we need to do this in order...
  - we're literally just adding a step to the last problem
  - we could steal that one guy's method; I still remember it
    - do I? let's try it
  - first, we iterate over a range from 0 to one less than the size of the string
    - we iterate a second time (nested) with the same range; these represent our index bounds
  - we use variable reference to create the substring
    - if it's the same as its reversal, we push it to the collection
    - if not, next
  - done
C
=end

def palindromes(string)
  (0...string.size).each_with_object([]) do |l_index, collection|
    (0...string.size).each do |r_index|
      substring = string[l_index..r_index]
      next if substring == '' || substring.size < 2
      collection << substring if substring == substring.reverse
    end
  end
end

p palindromes('abcd')# == []
p palindromes('madam')== ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
    