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
  row_1, row_2, row_3 = array[0], array[1], array[2]
  matrix = array
  
  matrix.each_with_index do |subarr, row|
    next if 
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix #== [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]