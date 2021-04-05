=begin

P
  - write a method that takes two sorted arrays as args, and returns a new array 
    that contains all elements from both args in sorted order.
  - input: two arrays
  - output: combined and sorted array
  - note: do not write a method that involves sorting a result array
  - note: do not mutate input arrays
E
  - see book
D
  - arrays
A
  - merge arrays into a new array
  - you did not pay attention to the instructions
  
C
=end

require 'pry'

# def merge(arr1, arr2)
#   result, idx1, idx2 = [], 0, 0
#   until result.size == (arr1.size + arr2.size)
#     binding.pry
#     result << arr1[idx1..-1] if arr2[idx2] == nil
#     result << arr2[idx2..-1] if arr1[idx1] == nil
#     if arr1[idx1] > arr2[idx2]
#       result << arr2[idx2]
#       idx2 += 1
#     else
#       result << arr1[idx1]
#       idx1 += 1
#     end
#   end
#   result.flatten
# end


def merge(arr1, arr2)
  result, idx1, idx2 = [], 0, 0
  until arr1[idx1] == nil || arr2[idx2] == nil
    if arr1[idx1] > arr2[idx2]
      result << arr2[idx2]
      idx2 += 1
    else
      result << arr1[idx1]
      idx1 += 1
    end
  end
  arr2[idx2] == nil ? result << arr1[idx1..-1] : result << arr2[idx2..-1] 
  result.flatten
end
    

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]