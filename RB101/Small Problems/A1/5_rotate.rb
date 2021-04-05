=begin

P
  - write a method that takes an arbitrary matrix and rotates it 90 degrees
    clockwise; do not mutate original array (based on example)
  - input: matrix
  - output: new matrix
E
  - see book
D
  - arrays......
A
  - this is basically the last problem in terms of determining rows and columns, 
  - stepping up, stepping down...upto...downto...
  - 
  
C
=end

def rotate90(array)
  array[0].map.with_index do |_, idx|
    result = []
    (array.size - 1).downto(0) { |row| result << array[row][idx] }
    result
  end
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2