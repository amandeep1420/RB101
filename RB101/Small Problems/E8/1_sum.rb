def sum_of_sums(array)
  array_of_arrays = []
  slice_counter = 1
  until array_of_arrays.size == array.size
    running_array = array[0, slice_counter]
    array_of_arrays << running_array
    slice_counter += 1
  end
  array_of_arrays.map { |subarr| subarr.reduce(:+) }.sum
end

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35