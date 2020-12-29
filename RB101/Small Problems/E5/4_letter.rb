# def swap(word)
#   word_array = word.split(' ')
#   word_array.each do |word|
#     first_letter = word[0]
#     last_letter = word[-1]
#     word[0] = last_letter
#     word[-1] = first_letter
#   end.join(' ')
# end


# puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# puts swap('Abcde') == 'ebcdA'
# puts swap('a') == 'a'


# our solution works - took a minute to write it out to explain why it works...
# the original objects still existed; we pointed placeholder objects toward them; we used reassignment to change where the array values pointed to, 
# but used the placeholder variables as references to the original objects...

# this sort of thing is summarized within multiple-assignment - the breakdown the book shows illustrates how it's like using placeholder variables.
# 'ruby effectively creates a temporary array with the values from the right side, and then assigns array elements into the corresponding named variable.

# learned multiple-assignment syntax to swap values ---> a, b = b, a

def swap_first_last_characters(a, b)
  a, b = b, a
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word[0], word[-1])
  end
  print result.join(' ')
  print "\n"
end

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

