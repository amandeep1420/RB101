=begin

P
  - write a method that takes an Array of integer between 0 and 19 and returns an array of those
    integers sorted based on the english words for each number
  - input: array of integers from 0-19
  - output: integer list sorted by alphabetical order
  - note: output list is an array
  - note: only one test case
E
  - see book
D
  - hash likely to be used - hmm, or array and index reference
A
  - first, create array
  - next, declare method
  - next, transform input array into equivalent string array
  - next, sort returned array by alphabetical order
  - next, transform array back into integers
  
C
=end

NUM_WORD_KEY = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(num_arr)
  num_arr.map { |x| NUM_WORD_KEY[x] }.sort.map { |str| NUM_WORD_KEY.index(str) }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]