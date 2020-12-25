def ascii_value(string)
  value = 0
  string.each_char { |num| value += num.ord }     # changed from .split('').each - had no idea each_char even existed
  value
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0


# F.E.
# mystery method is chr
# only returns first letter of a string when called on multicharacter string