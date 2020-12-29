def word_sizes(string)
  word_array = string.split
  word_array.each_with_object({}) do |word, hash|
    hash.key?(word.length) ? hash[word.length] += 1 : hash[word.length] = 1
  end
end

# def word_sizes(string)
#   string.split.map { |word| word.size }.tally     # only works for 2.7 or later
# end


puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}

# learned that we can set a new hash to return a default value of zero when a key that doesn't exist is referenced
# format ============>    new_hash = Hash.new(0) ============> you can set any default value you want, tested and confirmed via irb





# review Hash::new; specifically, review using a block to set a default value

