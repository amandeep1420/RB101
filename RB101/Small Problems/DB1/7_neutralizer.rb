def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

def neutralize(sentence)
  words = sentence.split(' ')
  words.each do |word|
    words.delete(word) if negative?(word)
    binding.pry
  end

  words.join(' ')
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

# the #delete call modifies the calling array in real-time; when 'dull' is 
# deleted, all objects in the array are shifted down by 1 in terms of their
# index values; as a result, boring is completely skipped, as its new index 
# value for the next iteration of the #each call is 1 - and #each is looking at
# index 2