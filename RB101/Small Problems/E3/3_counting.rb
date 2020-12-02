# logic extraction to a method for repeat use

def character_count(word)
  count = word.split(" ").join.length
  puts "There are #{count} characters in \"#{word}\"."
end

print "Please write word or multiple words: "
input = gets.chomp

character_count(input)

# using their chained call - .delete(" ").size - is more efficient.