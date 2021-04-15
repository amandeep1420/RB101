arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map { |sub| sub.select { |n| n % 3 == 0 } }

