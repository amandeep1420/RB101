arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |sub|
  sub.sort { |x, y| y <=> x }
end

# nice, we're burning through these