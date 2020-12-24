def short_long_short(string1, string2)
  string1.size > string2.size ? string2 + string1 + string2 : string1 + string2 + string1
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"

# correct and follows the book's suggestion of using a ternary operator. good!