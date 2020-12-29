def crunch(string)
  string.split('').each_with_object([]) do |char, char_array|
    char_array << char unless char_array.last == char
  end.join
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts ('') == ''


# the further exploration is important; do it on the second go-around, trying to finish the set for now