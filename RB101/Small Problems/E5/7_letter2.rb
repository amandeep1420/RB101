# ALPHABET = ("a".."z").to_a

def word_sizes(string)
  string.split.each_with_object(Hash.new(0)) do |word, hsh| 
    fixed_word = word.delete('^A-Za-z')
    hsh[fixed_word.size] += 1 
  end
end

# def word_sizes(words_string)
#   words_string.split.each_with_object(Hash.new(0)) do |word, hash|
#     clean_word = word.delete('^A-Za-z')
#     hash[clean_word.size] += 1
#   end
# end


# # def word_sizes(string)
# #   string.split.map { |word| word.size }.tally     # only works for 2.7 or later
# # end


puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}

# learned about using the String#delete method - uses the format from #count
