# # Find the missing letter
# # Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.
# #
# # You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
# #
# # The array will always contain letters in only one case.
# # Example:
# #
# # ['a','b','c','d','f'] -> 'e'
# # ['O','Q','R','S'] -> 'P'
# =begin
# P
#   - write a method that takes an array of alphabetical characters in ascending ASCII value
#     order as input and returns the missing letter in the array
#   - input: array of characters
#   - output: "missing character" from collection
#   - note: case maintained across input collection
#   - note: input array is always valid
#   - note: always exactly one letter missing
#   - note: input array length will always be at least 2
#   - note: not concerned with moving past end of array
#   - note: english alphabet
# E
#   - see prompt/examples
# D
#   - array
# A
#   - check the case of the collection and handle
#     - if collection is uppercase, track this in a variable
#     - transform collection into a 'lowercased' version
#   - create a collection of values from the ascii table to reference
#     - create a range from a-z, convert to array, store 
#   - loop through the collection (likely use each)
#     - for each element
#       - compare with ascii value of next element
#         - if the difference is greater than one, return character at next ascii table value
# =end
# # Use the English alphabet with 26 letters.
 
# def find_missing_letter(characters)
#   characters.each.with_index do |char, index|
#     return char.next if char.next != characters[index + 1]
#   end
# end

# p find_missing_letter(["a","b","c","d","f"]) == "e"
# p find_missing_letter(["O","Q","R","S"]) #== "P"
# p find_missing_letter(["b","d"]) == "c"
# p find_missing_letter(["a","b","d"]) == "c"
# p find_missing_letter(["b","d","e"]) == "c"
 


# Given an array of n positive integers and a positive integer s, find the minimal length of a contiguous subarray of which the sum ≥ s. 
# If there isn't one, return 0 instead.

=begin

P
  - given an array of n positive integers + a positive integer s, find the minimal length 
    of a contiguous subarray of which the sum is greater than or equal to s;
    if there isn't one, return 0
  - input: array of positive integers
  - output: minimum length of 
  - note: input array will always have at least one integer
  - note: no other visible edge cases at this time
  - note: no specification made regarding mutation
E
  - see below
D
  - array
A
  - initialize a result array to store sum
  - return 0 if sum is less than s
  - until result >= s
    - create a loop
      - going to iterate over ranges in the original array
      - size = 1
      - index = 0
  - ###algorithm left incomplete###
C
=end



def minSubLength(arr, s)
  return 0 if arr.sum < s
  
  range = []
  
  until range.sum >= s
    size = 1
    start_index = 0
  
    loop do
      range = arr[start_index, size]
      break if range.sum >= s
      
      if size + start_index > arr.size
        size += 1
        start_index = 0
      else
        start_index += 1
      end
      
    end
  end
  
  range.size
end
  
  
p minSubLength([2,3,1,2,4,3], 7) == 2
p minSubLength([1, 10, 5, 2, 7], 9) == 1
p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p minSubLength([1, 2, 4], 8) == 0



# You are going to be given an array of integers. 
# Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. 
# If there is no index that would make this happen, return -1.


=begin

P
  - given an array of integers, find an index where the sum of the integers to the left of n is equal to the sum of the integers to the right
  - return -1 if this is not possible
  - input: array of integers
  - output: index that meets reqs, or -1
  - note: do NOT include integer at selected index in calculation
  - note: working with sums
E
  - see book
D
  - arrays
A
  - iterate over index
    - if range from left, summed == range to right, summed, return current index
  - return -1 if iteration completes with no returned index
C
=end


def find_even_index(arr)
  arr.each_index do |idx|
    return idx if arr[0...idx].sum == arr[idx + 1..-1].sum
  end
  -1
end
  
# p find_even_index([1,2,3,4,3,2,1]) == 3
# p find_even_index([1,100,50,-51,1,1]) == 1
# p find_even_index([1,2,3,4,5,6]) == -1
# p find_even_index([20,10,30,10,10,15,35]) == 3
# p find_even_index([20,10,-80,10,10,15,35]) == 0
# p find_even_index([10,-80,10,10,15,35,20]) == 6
# p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3



# You are given an array strarr of strings and an integer k. 
# Your task is to return the first longest string consisting of k consecutive strings taken in the array.

# #Example: longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2) --> "abigailtheta"

# n being the length of the string array, if n = 0 or k > n or k <= 0 return "".

=begin

P
  - given an array of strings and an integer, k, return the first longest string consisting of k consecutive strings in the array
  - input: arr of strings
  - output: first combined string of desired length
  - note: consider empty edge case
E
  - see book
D
  - strings, arrays
A
  - initialize empty string
  
  
C
=end

# def longest_consec(strings, count)
#   result = ''
#   combined = 0
  
#     until combined == count
#     size = 1
#     start_index = 0
  
#     loop do
#       range = arr[start_index, size]
#       break if range.sum >= s
      
#       if size + start_index > arr.size
#         size += 1
#         start_index = 0
#       else
#         start_index += 1
#       end
      
#     end
#   end
  



p longest_consec(["a", "ab", "abc", "d", "ee", "abcde", "bbb"], 6) == "ababcdeeabcdebbb"
p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], 2) == "abigailtheta"
p longest_consec(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1) == "oocccffuucccjjjkkkjyyyeehh"
p longest_consec([], 3) == ""
p longest_consec(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2) == "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck"
p longest_consec(["wlwsasphmxx","owiaxujylentrklctozmymu","wpgozvxxiu"], 2) == "wlwsasphmxxowiaxujylentrklctozmymu"
p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], -2) == ""
p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 3) == "ixoyx3452zzzzzzzzzzzz"
p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 15) == ""
p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 0) == ""