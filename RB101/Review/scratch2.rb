# Given an array of n positive integers and a positive integer s, find the minimal length of a contiguous subarray of which the sum ≥ s. 
# If there isn't one, return 0 instead.

=begin

P
  - given an array of "n" positive integers, along with a positive integer "s",
    find the minimum length of a contiguous subarray for which the sum >= "s".
  - input: an array of positive integers
  - output: legnth of shortest valid subarray
  - note: if no valid subarrays, return 0
E
  - see examples
D
  - arrays
A
  - create collection of subarrays (extract into method)
    - initialize empty array variable for storage
    - iterate over each index of input array
      - for each index, create a loop
        - size = 1
        - start loop
          - slice array from index with given size, save
          - push to storage
          - is the last element of the sliced array == the last element of the input array?
            - if so, break
          - size += 1
        - end loop
        
  - sort the collection of subarrays shortest to longest
  - iterate through collection, returning the size of the smallest valid subarray
  - return 0 if no valid collection found
C
=end

def create_collection(array)
  collection = []
  
  array.each_index do |index|
    size = 1
    loop do
      subarray = array[index, size]
      collection << subarray
      break if subarray.last == array.last
      size += 1
    end
  end
  
  collection
end

def minSubLength(arr, s)
  
  collection = create_collection(arr)
  
  collection.sort_by! { |subarr| subarr.size } 
  
  collection.each do |subarr|
    return subarr.size if subarr.sum >= s
  end
  
  0
end

      



p minSubLength([2,3,1,2,4,3], 7) == 2
p minSubLength([1, 10, 5, 2, 7], 9) == 1
p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p minSubLength([1, 2, 4], 8) == 0