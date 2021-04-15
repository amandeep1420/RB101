def high(x)
  alpha = ('a'..'z').to_a.unshift(' ')
  words = x.split
  totals = words.map { |word| word.split('').inject(0) { |total, char| total += alpha.index(char) } }
  index = totals.index(totals.max) # finds index of first element that matches max in array
  words[index]
end