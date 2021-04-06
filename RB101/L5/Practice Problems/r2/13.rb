arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# return a new array containing the same sub-arrays as the original but 
# ordered by only taking into consideration the odd numbers they contain

arr.sort_by { |subarr| subarr.select { |num| num.odd? }}