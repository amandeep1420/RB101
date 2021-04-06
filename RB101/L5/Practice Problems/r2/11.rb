arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# use methods (such as select or `reject`) to return a new array
# identical in structure but containing only the integers that are multiples of 3

j = arr.map { |subarr| subarr.select { |el| el % 3 == 0 } }

p j 