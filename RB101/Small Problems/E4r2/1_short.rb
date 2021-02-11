=begin

P
  - write a method that takes two strings as args, determines the longest of the 
    two strings, and then returns the result of concatenating the shorter string, longer string, shorter string.
  - input: two strings
  - output: one string
  - note: there will always be a longer/shorter string
  - note: empty strings may be used as input
  - note: symbols, nums, etc. not shown in examples
E
  - see book
D
  - strings, arrays likely...
A
  - compare string sizes first to find largest
  - output based on comparison
  
=end

def short_long_short(s1, s2)
  s1.size > s2.size ? s2 + s1 + s2 : s1 + s2 + s1
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

# yep, just like book, ez pz