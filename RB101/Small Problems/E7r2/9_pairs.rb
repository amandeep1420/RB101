=begin

P
  - write a method that takes two array args (in which each array contains a list
    of numbers) and returns a new array that contains the product of every pair
    of numbers that can be formed between the elements of the two arrays. the 
    results should be sorted by increasing value
  - input: arrays
  - output: combined array
  - note: no arg will be empty
  - note: all array elements are integers
  - note: arrays may be different lengths
E
  - see book
D
  - arrays
A
  - first, iterate over first array
    - then iterate over second array with collection object (nested iteration)
      - push each product to collection object
  - sort result
C
=end

# def multiply_all_pairs(arr1, arr2)
#   arr1.each_with_object([]) do |num1, array|
#     arr2.each { |num2| array << num1 * num2 }
#   end.sort
# end

def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map { |pair| pair.reduce(:*) }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# Array#product returns an array containing nested pairs representing every combination possible between the elements of two arrays