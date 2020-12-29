ALPHABET = ('a'..'z').to_a

def letter?(char)
  ALPHABET.include?(char)
end

def cleanup(string)
  string.split('').map do |char|
    letter?(char) ? char : " "
  end.join.squeeze(" ")
end

puts cleanup("---what's my +*& line?") == ' what s my line '

# eventually found the #squeeze method, thank goodness
# couldn't find a good way to reference the last element in the array
# solution: push answers to a new array, then use Array#last to check last pushed element
# ^ from the book
# note: problem did not specify as to whether the original array or a new array should be returned

