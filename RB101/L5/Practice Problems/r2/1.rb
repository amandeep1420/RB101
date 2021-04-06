arr = ['10', '11', '9', '7', '8']

# order by descending numeric value

p arr.sort { |n1, n2| n2.to_i <=> n1.to_i }

