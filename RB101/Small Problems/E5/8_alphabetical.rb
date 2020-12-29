NUM_WORDS = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(array)
#   string_array = array.map { |num| NUM_WORDS[num] }.sort
#   string_array.map { |element| NUM_WORDS.index(element) }
# end

def alphabetic_number_sort(array)
  array.sort_by { |num| NUM_WORDS[num] }
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# wow, sort_by makes this a cakewalk
# make note: Array#sort_by! modifies the caller, whereas Enumerable#sort_by does not
# both are available to the Array class

