=begin

P
  - write a method that returns a list of all substrings of a string. the 
    returned list should be ordered by where in the string the substring 
    begins.....see problem for further info. we may use the method from the 
    prior problem here.
  - input: string
  - output: array containing all possible substrings of all possible lengths
  - note: input string will not be empty or contain special chars
  - note: no specification made regarding mutation of input string
E
  - see book
D
  - arrays
A
  - first, declare a storage variable? optional
  - split the string
  - need to iterate over split string...
    - need to move index reference up by one after exhausting all possible subs
    - referencing an index range that's out of bounds returns an empty string
    - ...
    - this shouldn't be difficult
    
C
=end

def substrings(string)
  string.split('').each_with_object([]) do |char, subs|
    running_index = string.index(char)
    until subs.last == string[(string.index(char))..-1]
      subs << string[(string.index(char))..running_index]
      running_index += 1
    end
  end
end
    

# def substrings(string)
#   (0...string.size).each_with_object([]) do |l_index, subs|
#     (0...string.size).each do |r_index|
#       subs << string[l_index..r_index] unless string[l_index..r_index] == ''
#     end
#   end
# end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]