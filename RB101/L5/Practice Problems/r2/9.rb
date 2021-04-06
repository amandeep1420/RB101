arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# return a new array of the same structure but with the sub-arrays being ordered

p arr.map { |subarr| subarr.sort { |a, b| b <=> a } }