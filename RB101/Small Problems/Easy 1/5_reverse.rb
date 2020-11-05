Do this one again.

# my answer:

=begin

Problem
  - input: a string
  - output: a string
  - take the string, reverse the words, output the reversed word string
  - word case and spacing must be retained
Examples
  - puts reverse_sentence('') == ''
  - puts reverse_sentence('Hello World') == 'World Hello'
  - puts reverse_sentence('Reverse these words') == 'words these Reverse'
Data structure
  - string to array to string?
Algorithm
  - split string into array of words
  - declare empty string variable
  - push array elements with a space until none left
Code

=end

def reverse_sentence(string)
  
  rs = ""
  
  string = string.split
  
  loop do
    rs << string.pop
    break if string.empty?
    rs << " "
  end 
  rs 
end

puts reverse_sentence("This cat is bad!")

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'


# doesn't work with an empty string; I am not surprised. passes otherwise.

# looking at solution; can't keep spending giant blocks of time on just one problem.

# book solution below - we were on the right track with using .reverse in the first place.

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

# if I had known about .join, this would've been a cakewalk.
# now I know, muehehehe.

