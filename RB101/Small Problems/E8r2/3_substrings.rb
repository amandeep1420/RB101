=begin

P
  - write a method that returns a list of all substrings of a string that start 
    at the beginning of the original string. the return value should be arranged 
    in order from shortest to longest substring
  - input: string
  - output: array
  - note: example strings are all lowercase w/ no symbols or numbers
E
  - see book
D
  - strings, arrays
A
  - split string into chars, then transform
    - during each transformation, ...
C
=end

def leading_substrings(string)
  storage = ''
  string.split('').map { |char| storage += char }
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']