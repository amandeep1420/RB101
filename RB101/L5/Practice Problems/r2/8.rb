hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# output vowels only using #each

# hsh.each do |key, subhash|
#   subhash.map do |word|
#     puts word.delete('^aeiou')
#   end
# end

# or

hsh.each do |key, array|
  array.each do |word|
    word.chars.each do |char|
      print char + ' ' if 'aeiou'.include?(char)
    end
  end
end

# their solution was better