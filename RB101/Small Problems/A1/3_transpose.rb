=begin

P
  - write a method that takes a 3by3 matrix and returns the trsnapose of the 
    original matrix. don't use Array#transpose or the Matrix class.
  - input: matrix/array of arrays
  - output: new array
  - note: do not mutate original array
E
  - see book
D
  - arrays...
A
  - copy array to avoid mutation
  - nested each calls
  - if idx == idx2, next
    - else, swap the indexes with reassignment
  - didn't work...
  - maybe just stay on the row level..
C
=end

def transpose(array)
  matrix = array.map { |row| row.map { |el| 0 } }
  
  matrix.map.with_index do |subarr, idx1|
    subarr.each_with_index do |element, idx2|
      matrix[idx1][idx2] = array[idx2][idx1]
    end
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
