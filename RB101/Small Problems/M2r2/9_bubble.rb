=begin

P
  - write a method that takes an array as an arg, and sorts that array using 
    the bubble sort algorithm. you must mutate the array passed into the method.
    the array will contain at least two elements.
  - input: array
  - output: mutated, bubble-sorted array
  - note: don't use #sort...
E
  - see book
D
  - array
A
  - need to iterate over each part of array
  - reassignment is mutating
  - okay, let's go
  - first, establish a 'changed' var
  - until 'changed' == false
    - iterate with index
      - if index+1 == nil, next
    
C
=end

def bubble_sort!(arr)
  loop do
    pre_sort = arr.clone
    arr.each_index do |idx|
      next if arr[idx + 1] == nil
      arr[idx], arr[idx+1] = arr[idx+1], arr[idx] if (arr[idx] <=> arr[idx + 1]) == 1
    end
    break if pre_sort == arr
  end
end

p array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)