=begin

P
  - this matrix stuff is really hard...
  - I understand how they transposed elements now, finally
  
  
=end

# def transpose(array)
#   matrix = array.map { |row| row.map { |el| 0 } }
  
#   matrix.map.with_index do |subarr, idx1|
#     subarr.each_with_index do |element, idx2|
#       matrix[idx1][idx2] = array[idx2][idx1]
#     end
#   end
# end


def transpose(array)
  rows, size = array.first.size, array.size
  
  (0...rows).each_with_object([]) do |row_idx, result|
    result << (0...size).map { |column_idx| array[column_idx][row_idx] }
  end
end



matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]