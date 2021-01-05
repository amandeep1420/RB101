def repeater(string)
  string.chars.map { |char| char * 2 }.join
end

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

# need to create mental muscle memory for this double-appending trick they user
# collection << element << element
# really cool, tbh