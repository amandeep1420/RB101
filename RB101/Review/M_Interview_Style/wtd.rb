# =begin

# P
#   - write a method that takes a sentence string as input and returns the same 
#     string with any sequence of the words 'zero' through 'nine' converted
#     to a string of digits
#   - input: a string
#   - output: same string, modified
#     - note: no edge cases to consider based on one example
# E
#   - see prompt
# D
#   - string, array
# A
#   - create a reference for converting strings to integers
#   - iterate over the reference
#     - if word is present in input string, substitute (mutate)
#       - substitution: index of the word converted to string
#     - return string
# C
# =end

# def word_to_digit(string)
#   reference = %w(zero one two three four five six seven eight nine)
  
#   reference.each { |word| string.gsub!(word, reference.index(word).to_s) }
  
#   string
# end

# p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'

  

=begin

P
  - write a method that returns true if the word passed in as an arg can be spelled
    from the given set of blocks without re-using a block, false otherwise
  - input: string
  - output: boolean
  - note: must be case agnostic
  - note: input strings will only include alphabetical characters
E
  - see prompt
D
  - array of strings for reference
A
  - initialize a variable to contain an array of strings representing the blocks
  - save downcased version of input string to a variable
  - iterate over reference, returning false if the letter count for any block
    inside the string is greater than 1
  - return true otherwise
  
C
=end


# def block_word?(string)
#   reference = %w( bo xk dq cp na gt re fs jw hu vi ly zm )
  
#   string = string.downcase
   
#   reference.each { |block| return false if string.count(block) > 1 }
  
#   true
# end


# p block_word?('BATCH') == true
# p block_word?('BUTCH') == false
# p block_word?('jest') == true

=begin

P
  - write a method that takes a string, and then returns a hash that contains 3
    entries: one represents the percentage of lowercase letters in string, another
    for uppercase, and another for remaining characters
  - input: a string containing various character types
  - output: hash with results
  - note: input string will always contain at least one character
  - note: return percentages rounded to one decimal if needed
E
  - see prompt
D
  - hash
A
  - initialize a hash to store percentages
  - split input string into array of chars and store
  - convert range of lowercase a-z to array, add to range of uppercase a-z converted to array, save for reference
    - reworked: save uppercase as separate reference, lowercase as separate reference
  - iterate over chars
    - if the uppercased alphabet array includes character, increment value for uppercase key in hash by 1
    - if the lowercased alphabet array includes character, increment value for lowercase key in hash by 1
    - else increment value for neither key by 1
  - initialize a variable to the character count for the string
  - transform the results hash, converting each character count to a percentage
    - if the count divided by the value does not have a remaine
  
C
=end

  
# UPPERCASE = ('A'..'Z').to_a
  
# LOWERCASE = ('a'..'z').to_a


# def letter_percentages(string)
#   results = { lowercase: 0, uppercase: 0, neither: 0 }
  
#   chars = string.chars

#   chars.each do |char|
#     if LOWERCASE.include?(char)
#       results[:lowercase] += 1 
#     elsif UPPERCASE.include?(char)
#       results[:uppercase] += 1 
#     else
#       results[:neither] += 1
#     end
#   end
  
#   count = chars.size
  
#   results.map do |_, v| 
#     value = v * 100
#     value % count == 0 ? value.div(count) : value.to_f / count
#   end
# end

# p letter_percentages('abCdef 123')# == { lowercase: 50, uppercase: 10, neither: 40 }
# p letter_percentages('AbCd +Ef')# == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# p letter_percentages('123')# == { lowercase: 0, uppercase: 0, neither: 100 }
  
  
  
=begin

P
  - write a method that takes a string as an arg, and returns true if all 
    parentheses in the string are properly balanced - false otherwise.
    to be properly balanced, they must occur in ( and ) pairs
  - input: string
  - output: boolean
    - notes: if ) occurs first, return false
    - notes: placement matters
E
  - see prompt
D
  - array
A
  - initialize variable to the result of deleting all characters that aren't parentheses from the string
  - until the size of the string is less than 2
    - initialize variable to the result of substituting an empty string with pairs of parentheses
  - check if fixed string is empty - return true if so, return false otherwise
  
C

=end

# def balanced?(string)
#   fixed = string.delete("^()")
#   until fixed.size < 2 || fixed.start_with?(")")
#     fixed = fixed.gsub(/\(\)/, '')
#   end
#   fixed.empty?
# end

# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
# p balanced?('((What) (is this))?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false

=begin

P
  - write a method that takes a single integer as an arg and returns the next featured
    number that is greater than the argument; return an error message if there is 
    no next featured number.
  - input: integer
  - output: featured integer higher than input or error message
    - note: featured number is a multiple of seven with unique integers
    - note: return error if the input is higher than 9876543210
    - note: don't need to handle negatives
    - note: zero handling implied
E
  - see prompt
D
  - array
A
  - establish starting point
    - invoke divmod on input, capture first element of returned array and add 1, re-multiply by 7, save as starting point
  - until all digits are unique
    - add 7
    
C
=end

# def featured(int)
#   return "There is no possible number that fulfills those requirements" if int > 9876543210
#   start = (int.divmod(7)[0] + 1) * 7
#   until start.digits.uniq == start.digits && start.odd?
#     start += 7
#   end
#   start
# end

# p featured(12) == 21
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987

# p featured(9_999_999_999)










=begin
Write a function called weirdcase that accepts a string, 
and returns the same string with all even indexed characters in each word upper cased, 
and all odd indexed characters in each word lower cased. 
The indexing just explained is zero based, so the zero-ith index is even, therefore that character should be upper cased.

The passed in string will only consist of alphabetical characters and spaces(' '). 
Spaces will only be present if there are multiple words. Words will be separated by a single space(' ').

This will test your ability to analyze test cases; this problem description is misleading.
=end

# weirdcase( "String" )#=> returns "StRiNg"
# weirdcase( "Weird string case" );#=> returns "WeIrD StRiNg CaSe"
# weirdcase('This') == 'ThIs'
# weirdcase('is') == 'Is'
# weirdcase('This is a test') == 'ThIs Is A TeSt'

# =begin
# Find the longest substring in alphabetical order.
# Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".
# The input will only consist of lowercase characters and will be at least one letter long.
# If there are multiple solutions, return the one that appears first.

# This one may be on the tougher side.
# =end

# longest('asd') == 'as'
# longest('nab') == 'ab'
# longest('abcdeapbcdef') == 'abcde'
# longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
# longest('asdfbyfgiklag') == 'fgikl'
# longest('z') == 'z'
# longest('zyba') == 'z'

=begin

P
    - given two arrays of strings, return a sorted array in order of the strings
      of a1 which are substrings of strings of a2
    - input: two arrays of strings
    - output: an array of matching strings
    - note: do not mutate inputs
    - note: empty array may be returned if no matches found
    - note: ~
E
  - see prompt
D
  - arrays
A
  - iterate over first array
    - select all elements from first array which are substrings of any strings in the
      second array
  - return selected elements, sorted
C
=end

# def in_array(array1, array2)
#   array1.select do |substring| 
#     array2.any? { |word| word.include?(substring) }
#   end.sort
# end

=begin

P
  - write a method that takes an array of consecutive, increasing letters as input
    and returns the missing letter in the array
  - input: array of letters
  - output: missing letter
  - note: input array will always be valid
  - note: input array will always be missing one letter only
  - note: input array length will always be at least 2
  - note: case maintained across input array
E
  - see prompt
D
  - arrays
A
  - iterate over each letter and each index in the collection
    - if the next letter in the collection does not equal the next value in the ascii table, 
      return the next letter
    
C
=end

=begin

P
  - create a method that takes an input array of names and returns a string
    formatted per the rules
  - input: array of names
  - output: formatted string
  - note: empty array returns "no one lines this"
  - note: single name returns "name likes this"
  - note: two names returns "name and name like this"
  - note: three names returns "name, name, and name like this"
  - note: four or more names returns "name, name, and (count of rest of names) likes this
E
  - see prompt
D
  - ~
A
  - establish different return values based on the input array size
    - when empty then "no one likes this"
    - when 1 then "name likes this"
    - when 2 then name and name likes this
    - when 3 then name, name, and name likes this
    - when 4 or more then first name, second name, and count of rest of names likes this
    
    
    
C
=end



=begin

P
  - write a method that takes a shuffled list of unique numbers from 1 to n
    with one element missing (any number, including n); return the missing number
  - input: array of integers
  - output: desired integer
  - note: no negatives, no zero to start..
  - note: huge lists will be tested
  - note: return 1 if it's missing from the inputted collection
  - note: return the highest number in the inputted collection plus 1 if the collection is
          not missing anything
E
  - see prompt
D
  - ~
A
  - sort the input array
  - find max number from inputted collection and save
  - iterate over a range from 1 to the highest number in the collection
    - return number if it's not in the inputted collection
  - iteration is done with nothing returned? returned max plus 1
  
C
=end

# def find_missing_number(numbers)
#   max = numbers.max
#   (1..max).each do |number|
#     return number if !numbers.include?(number)
#   end
#   max + 1
# end
    
  
# string = '1234'

# def solve(s) 
#   s = s.chars
#   storage = []
  
#   (1..s.size).each do |length|
#     storage += s.each_cons(length).to_a
#   end
  
#   storage = storage.map { |subarray| subarray.join('')}
  
#   storage.select { |string| string.to_i.odd? }
  
# end

# p solve(string)

# def kebabize(str)
#   str = str.delete("^A-Za-z")
#   chars = str.chars
#   fixed_string = ''
  
#   chars.each do |char|
#     char == char.upcase ? fixed_string << '-' + char : fixed_string << char
#   end
  
#   fixed_string
  
  
# end

# p kebabize('catHat32Bat')

# def fix_first_letter(words)
#   words.map do |word|
#     word = word.chars
#     code_parts, alpha_chars = word.partition { |char| char == char.to_i.to_s }
#     fixed_letter = code_parts.join.to_i.chr
#     fixed_letter
#     # rest_of_word = alpha_chars.join
#     # fixed_letter + rest_of_word
#   end
# end



# p fix_first_letter(['11cat', '22bat'])


# def decipher_this(string)
#   words = string.split(' ')
  
#   words = fix_first_letter(words)
# end

# p decipher_this('11cat')


# def array_diff(a, b)
#   a.select { |element| !b.include?(element) }
# end

=begin

P
  - write a method that takes two strings and returns true if there is a substring
    that appears in both strings
  - input: two strings
  - output: boolean
    - note: empty strings are valid input
    - note: case insensitive
    - note: substring must be more than one char long
    - substring == must be contiguous
E
  - see prompt
D
  - arrays baby
A
  > create collections
    - convert both strings to arrays
      - lowercase all chars
  > create string combinations for each input string
    - for each set of letters:
      - possible method: each_cons
      - call on collection, convert to array, initialize var to return value
  > convert combinations to strings
    - transform each subarray from each collection, and...
    - reassign collection to return value of transformation
  > iterate over collections to see if any substrings match
    - pick one
    - for each iteration:
      - does the other collection include it?
        - if so, return true
  > return false
C
=end

# def substring_test(string_1, string_2)
#   string_1_letters = string_1.chars.map { |letter| letter.downcase }
#   string_2_letters = string_2.chars.map { |letter| letter.downcase }
  
#   set_1 = string_1_letters.each_cons(2).to_a
#   set_2 = string_2_letters.each_cons(2).to_a
  
#   set_1 = set_1.map { |subarr| subarr.join }
#   set_2 = set_2.map { |subarr| subarr.join }
  
#   set_1.each { |string| return true if set_2.include?(string) }
#   false
# end


# p substring_test('', 'CAt')
# p substring_test("", "")

















# # Given an array of n positive integers and a positive integer s, find the minimal length of a contiguous subarray of which the sum ≥ s. If there isn't one, return 0 instead.


=begin
P
  - given an array of n integers and another integer, find the minimum length of a contiguous subarray for which the sum >= s; if there isn't one, return 0 instead
  - input: array of integers, a 'max'
  - output: either smallest subarray's LENGTH that meets reqs, or 0
    - note: input array integers will only be positive
    - note: do not need to perform input validation based on test cases
    - note: ~
E
  - see prompt
D
  - ~
A
    > create a collection of all possible contiguous sub-arrays
      - possible method: each_cons
      - initialize empty array for collection
      - from 1 to the length of the array, iterate:
        - call each_cons on the input array, passing in 'sizes'
        - collect and save this in a variable; reassign variable to return value of 
          adding the collection to the return value of each_cons for each iteration
    > evaluate collection
      - already organized by length due to order of each_cons invocations; perfect
      - for each collection
        - return the size of the collection if the sum of the collection >= minimum
    > return 0
C
=end

# def minSubLength(arr, minimum)
#   collection = []
  
#   (1..arr.size).each { |size| collection += arr.each_cons(size).to_a }
  
#   collection.each { |subarr| return subarr.size if subarr.sum >= minimum }
#   0
# end

# p minSubLength([2,3,1,2,4,3], 7)== 2
# p minSubLength([1, 10, 5, 2, 7], 9) == 1
# p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# p minSubLength([1, 2, 4], 8) == 0



# Given integer array nums, return the third maximum number in this array. If the third maximum does not exist, return the maximum number.
# You are not allowed to sort the array

=begin

P
  - given an array of integers, return the third max number in the array; if it doesn't 
    exist, return the max number. you are not allowed to sort the array
  - input: array of integers
  - output: either the third highest num, or the highest num
    - note: no input validation needed
    - note: no edge cases to consider based on test cases
E
  - see prompt
D
  - ~
A
  > sort without sorting
    - create a loop
      - use a variable initialized to false to track whether the array was mutated
      - iterate over the array with indexes:
        - if comparison of elements yields -1, mutate and change tracker to true
        - if comparison yields anything else, move to next iteration
      - break loop if tracker is still false
  > eliminate duplicates
  > pick the relevant max
    - if array size is less than three, return the first element
    - if array size is three or greater, return the third element
C
=end

# def sort_nums(arr)
#   loop do
#     changed = false
#     arr.each_with_index do |num, idx|
#       if (num <=> arr[idx + 1]) == -1
#         arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
#         changed = true
#       else
#         next
#       end
#     end
#     break if changed == false
#   end
# end

# def third_max(arr)
#   sort_nums(arr)
  
#   arr.uniq!
  
#   arr.size < 3 ? arr[0] : arr[2]
# end
  
  

# p third_max([3,2,1]) == 1
# p third_max([1,2]) == 2
# p third_max([2,2,3,1]) == 1
# p third_max([1, 3, 4, 2, 2, 5, 6]) == 4

# reverse an array, in-place

=begin

P
  - input: array
  - output: the same array, mutated
E
  - ~
D
  - ~
A
  > copy the array, backwards, without mutating the original
    - initialize a variable to an empty array for storage
    - iterate over the input array
      - for each iteration:
        - possible method: unshift
        - pass each element to unshift call on storage array
  > reverse the input array
    - iterate over input array's indexes
      - for each iteration:
        - reassign element at each index to element in reference array
C
=end


# # Given an array of n positive integers and a positive integer s, find the minimal length of a contiguous subarray of which the sum ≥ s. If there isn't one, return 0 instead.


=begin

P
  - given an array of integers and a minimum, gind the minimum length of a contiguous subarray
    of which the sum >= the given minimum; return 0 if this doesn't exist
  - inputs: array of integers, an integer representing a minimum
  - output: either the smallest size of a valid array or 0
    - note: don't have to handle empty inputs
    - note: no specification made regarding mutation
    - note: ~
E
  - see prompt
D
  - ~
A
  > create a collection of all subarrays
    - initialize a new variable to store them (array)
    - for 1..size of the array, iterate as 'sizes':
      - set index to 0
      - create a loop
        - slice the array starting at 0 with size as secondary arg
        - store
        - push to collection
        - was the last element of the slice the last element in the input array?
          - if so, next
          - else, increment index by 1
  > find valid subarray
    - iterate over collection
      - for each subarray:
        - return the size of the subarray if the sum is >= the minimum
  > return 0
C
=end

# def create_subarrays(array)
#   collection = []
  
#   (1..array.size).each do |size|
#     index = 0
#     loop do
#       subarray = array[index, size]
#       collection << subarray
#       break if index + size == array.size
#       index += 1
#     end
#   end
  
#   collection
# end

# def minSubLength(array, minimum)
#   arrays = create_subarrays(array)
#   arrays.each { |subarray| return subarray.size if subarray.sum >= minimum }
#   0
# end
  



# p minSubLength([2,3,1,2,4,3], 7)== 2
# p minSubLength([1, 10, 5, 2, 7], 9) == 1
# p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# p minSubLength([1, 2, 4], 8) == 0

# def create_fibonaccis(size)
#   fibs = [1, 1]
#   until fibs.size == size
#     fibs << fibs[-1] + fibs[-2]
#   end
#   p fibs
# end

# create_fibonaccis(20)


=begin

P
  - given a non-empty string, check if it can be constructed by taking a substring
    of it and appending multiple copies of the substring together; you may assume
    the gven string consist of lowercase english letters only
  - input: a string
  - output: boolean representing whether substring can be used to re-create string
    - note: all input strings are lowercase
    - note: no specification made regarding mutation
    - note: empty string no valid input based on examples
    - note: ~
E
  - see prompt
D
  - ~
A
  > evaluate every slice of the string
    - for 1..(string size - 1) (these will be 'sizes')
      - slice the string at index zero with given size
      - get the multiplier by dividing the size of the original string by the size of the slice
      - multiply the slice by the multiplier
      - return true if it equals the string
  > return false
  
  
  
C
=end

# def repeated_substring_pattern(string)
#   (1..(string.size - 1)).each do |size|
#     substring = string[0, size]
#     multiplier = string.size / substring.size
#     return true if (substring * multiplier) == string
#   end
#   false
# end

# p repeated_substring_pattern("abab") == true
# p repeated_substring_pattern("aba") == false
# p repeated_substring_pattern("aabaaba") == false
# p repeated_substring_pattern("abaababaab") == true
# p repeated_substring_pattern("abcabcabcabc") == true


=begin

P
  - given an array of strings, return an array of all characters that show up 
    in each string (including duplicates).
  - input: array of strings
  - output: array of common characters
    - note: input strings are all lowercased
    - note: include duplicates
    - note: include the highest count of the lowest incidence of occurrence;
            in other words, include the character repeatedly based on how many 
            times it occurs in the string with the lowest 'count'
    - note: do not need to account for empty strings as elements in input
    - note: no specification made regarding mutation
    - note: return an empty array if no common characters found
E
  - ~
D
  - arrays
A
  > create a database of characters
    - join array elements together
    - split into array of sorted characters
  > find common characters
    - possible method: select
    - for each iteration over the database:
      - select characters that are present in each string
    - reduce down to single instance of each character
  > create an array based on lowest common count
    - initialize a new array for storage
    - iterate over each letter
    - for each iteration:
      - find the count of the letter in each string
        - example process/method: map
        - within each iteration, initialize a variable to the result of transforming
          each string in the original collection based on the count of the letter
          being iterated over
      - get the minimum from the counts, initialize variable to this minimum
      - push letter to collection array the minimum number of times
  > return collection array


=end

# def common_chars(strings)
#   letters = strings.join.chars.sort
  
#   letters.select! { |letter| strings.all? { |word| word.include?(letter) } }
  
#   letters.uniq!
  
#   result = []
  
#   letters.each do |letter|
#     count = strings.map { |string| string.count(letter) }
#     multiplier = count.min
#     multiplier.times { result << letter }
#   end
  
#   result
# end
  
  


# p common_chars(%w(bella label roller)) == %w(e l l)
# p common_chars(%w(cool lock cook)) == %w(c o)
# p common_chars(%w(hello goodbye booya random)) == %w(o)
# p common_chars(%w(aabbaaaa ccddddd eeffee ggrrrrr yyyzzzz)) == []


=begin

P
  - create a method that takes a positive integer and returns the next bigger 
    number formed by the same digits
  - input: an integer
  - output: an integer, or -1 if no bigger number exists
    - note: bigger number must include same digit count
    - note: only positive integers given as input
    - note: no specification made regarding mutation, irrelevant (integers)
E
  - see prompt
D
  - arrays
A
  > get all combinations of numbers of the same 'size'
    - initialize variable to return value of splitting number into array of digits
    - possible method: combination...
    - call permutation on digits, pass in size of digits array as arg
      - convert via to_a
        - initialize variable to return value
  > convert combinations to integers
    - transform each subarray
    - for each transformation
      - join subarray
      - convert to integer
  > sort combinations from least to greatest
  > iterate over each integer to find valid
    - return integer if it's greater than the input number
  > return -1
    

C
=end

# def next_num(num)
#   digits = num.digits.sort
#   size = digits.size
#   current_num = num + 1
  
#   loop do
#     return current_num if current_num > num && current_num.digits.sort == digits
#     current_num += 1
#     break if current_num.digits.size > size
#   end
  
#   -1
    
# end

# Write a method that takes a positive integer and returns the next biggest
# number formed by the same digits; return -1 if no such number exists.

# next_num(12) == 21
# next_num(513) == 531
# next_num(2017) == 2071
# next_num(9) == -1
# next_num(111) == -1
# next_num(531) == -1

=begin

P
  - find the max sum of all contiguous subarrays in an array
  - input: array of integers
  - output: max sum possible from a subarray
    - note: empty subarray should return zero
    - note: array of negatives only should return 0
    - note: negative numbers are valid as elements in input array
    - note: no specification made regarding mutation
E
  - see prompt
D
  - arrays
A
  > get all possible subarrays
    - initialize a variable to empty array for storage
    - possible method: each_cons
    - iterate over range, from 1 to size of input array
    - for each iteration:
      - reassign collection to return value of adding collection and 
        calling each_cons on input array (note: must chain to_a to each_cons)
  > get all possible sums
    - transform each subarray
    - for each transformation:
      - sum up the subarray
  > find the highest total
    - if it's negative, return 0

C
=end

# def max_sequence(numbers)
#   subarrays = []
  
#   (1..numbers.size).each { |size| subarrays += numbers.each_cons(size).to_a }
  
#   subarrays.map! { |subarray| subarray.sum }
  
#   max = subarrays.sort { |n1, n2| n2 <=> n1 }.first
  
#   result = []
  
#   result << max if max != nil    # really did not want to use a guard clause.........
  
#   result.sum < 0 ? 0 : result.sum
# end

# p max_sequence([]) == 0
# p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) #== 6
# p max_sequence([11]) == 11
# p max_sequence([-32]) == 0
# p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12


=begin

P
  - write a method to find the longest common prefix string amongst an array of 
    strings; return '' if no common prefix is found
  - input: array of strings
  - output: common prefix or ''
    - note: all strings are lowercase
    - note: empty array is not valid input
    - note: no specification made regarding mutation
E
  - ~
D
  - arrays
A
  > build a common string
    - initialize a variable to an empty string for storage
    - intialize a variable to represent the index
    - create a loop
      - store the index letter of the first string
      - break loop if letter isn't at the specified index for all strings

C
=end

# def common_prefix(strings)
#   result = ''
#   max = strings.sort_by { |string| string.length }[0].size
#   (0...max).each do |index| 
#     letter = strings[0][index]
#     strings.all? { |string| string[index] == letter } ? result << letter : break
#   end
#   result
# end
  

# p common_prefix(%w(flower flow flight)) #== 'fl'
# # p common_prefix(%w(dog racecar car)) #== ''
# p common_prefix(%w(interspecies interstellar interstate)) #== 'inters'
# # p common_prefix(%w(throne dungeon)) #== ''
# p common_prefix(%w(throne throne)) #== 'throne'


=begin

P
  - given two strings, find out if there is a substring that appears in both strings.
    return true if you find a substring that appears in both strings, false otherwise.
    substrings must be a minimum of two letters long.
  - input: two strings
  - output: boolean
    - note: empty input strings are valid; return false if one or both are empty
    - note: must not check case
    - note: ~
E
  - see prompt
D
  - arrays
A
  > create a collection of downcased characters for each string
    - create array of characters
    - transform array
    - for each transformation:
      - downcase the character
  > create all possible two-character substrings for each string -----> helper method
    - initialize a storage variable for each collection to an empty array
    - intialize variable to track index
    - start a loop
      - slice input array from index with size as 2
        - initialize variable to return value
      - push slice to collection
      - break if the index == size of array minus 2
      - increment index
    - return the storage variable
  > convert collections to string collections
    - transform each collection
    - for each transformation:
      - join the subarray
  > see if one collection includes any string from the other
    - iterate over strings in one collection
    - for each iteration:
      - return true if the other collection includes it
  > return false

C
=end


# def create_substring_arrays(array)
#   collection = []
#   return collection if array.empty?
#   index = 0
#   loop do
#     slice = array[index, 2]
#     collection << slice
#     break if index >= array.size - 2
#     index += 1
#   end
#   collection
# end

# def substring_test(str1, str2)
#   str1_letters = str1.chars.map(&:downcase)
#   str2_letters = str2.chars.map(&:downcase)
  
#   str1_subs = create_substring_arrays(str1_letters)
#   str2_subs = create_substring_arrays(str2_letters)
  
#   str1_subs.map! { |subarray| subarray.join }
#   str2_subs.map! { |subarray| subarray.join }
  
#   str1_subs.each { |string| return true if str2_subs.include?(string) }
#   false
# end

# Given two strings, return true if there is a substring that appears in both strings; 
# return false otherwise. Substrings must be a minimum of two letters l
  

# substring_test('Something', 'Fun') == false
# substring_test('Something', 'Home') == true
# substring_test('Something', '') == false
# substring_test('', 'Something') == false
# substring_test('BANANA', 'banana') == true
# substring_test('test', 'lllt') == false
# substring_test('', '') == false
# substring_test('1234567', '541265') == true
# substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtriciou') == true

=begin

P
  - write a method that returns true if a portion of the first input string's 
    characters can be rearranged to match the second input string; return false
    otherwise
  - input: two strings
  - output: true or false
    - note: only lowercase letters used
    - note: no empty input strings in test cases
    - note: no specification made regarding mutation
E
  - see prompt
D
  - arrays
A
  > create character collections for each string
    - possible method: chars
    - initialize variable to return value of invocation
  > compare letter count in reference with count in tester
    - iterate over test character collection
    - for each iteration:
      - is the count for the letter in the reference the less than the count in 
        the tester?
        - return false if not
  > return true

C
=end

# def scramble(reference, tester)
#   ref_letters = reference.chars
#   test_letters = tester.chars
  
#   test_letters.each { |letter| return false if test_letters.count(letter) > ref_letters.count(letter) }
#   true
# end
  
# Write a method that returns true if a portion of the first input string's characters
# can be rearranged to match the second input string; return false otherwise.
  

# scramble('javaass', 'jjss') == false
# scramble('rkqodlw', 'world') == true
# scramble('cedewaraaossoqqyt', 'codewars') == true
# scramble('katas', 'steak') == false
# scramble('scriptjava', 'javascript') == true
# scramble('scriptingjava', 'javascript') == true


=begin

P
  - find the length of the longest substring in a given string that
    is the same in reverse; if length of input string is 0, return 0
  - input: a string
  - output: length of longest palindromic substring, or 0
    - note: input strings may contain non-alpha characters
    - note: input strings may be empty
    - note: no specification made regarding mutation
    - note: ~
E
  - see prompt
D
  - arrays
A
    - convert string to array of characters
      - initialize variable to return value of conversion
    - initialize empty array for substring storage
  > get all possible substrings
    - possible method: each_cons
    - iterate over range from 1..letters.size
    - for each iteration:
      - pass value from range into each_cons call on letters as arg
        - chain to_a
        - reassign substring storage var to return value of adding 
          returned subarrays from each cons and substring storage
  > convert substring arrays to strings
    - transform substring array storage
    - for each transformation:
      - join the array
  > sort substrings from largest to smallest
    - possible method: sort
    - in block (ex. |str1, str2|):
      str2.size <=> str1.size
  > find the largest palindrome
    - iterate over the substrings
    - for each iteration:
      - return the string's size if the string == string.reverse
  > return 0

C
=end

# def longest_palindrome(string)
#   letters = string.chars
  
#   substrings = []
  
#   (1..string.size).each { |size| substrings += letters.each_cons(size).to_a }
  
#   substrings.map! { |subarray| subarray.join }
#             .sort! { |str1, str2| str2.size <=> str1.size }
#             .each { |sstring| return sstring.size if sstring == sstring.reverse }
#   0
# end

# Find the length of the longest substring in a given string that is the same
# in reverse; in other words, find the length of the longest palindrome substring
# in a a given string. If the length of the input string is 0, return 0.

# longest_palindrome("a") == 1
# longest_palindrome("aa") == 2
# longest_palindrome("baa") == 2
# longest_palindrome("aab") == 2
# longest_palindrome("baabcd") == 4
# longest_palindrome("baablkj12345432133d") == 9
# longest_palindrome("") == 0

# =begin

# P
#   - given an array of integers, find an index where the sum of integers to the left
#     is equal to the sum of the integers on the right...........did this one, lol
# =end 

=begin

P
  - 
=end


# def string_transformer(str)
#   chars = str.chars
#   fixed_storage = []
#   temp = ''
#   chars.each_with_index do |char, idx|
#     if char == ' '
#       fixed_storage << char
#       temp = ''
#       next
#     end
    
#     temp += char.swapcase
    
#     if chars[idx + 1] == nil || chars[idx + 1] == ' '
#       fixed_storage << temp
#     end
#   end
  
# fixed_storage.reverse.join
# end

# string_transformer('Example string')







#------------------------------------------------------------------------------





# 1

# Write a method that returns true if a portion of the first input string's characters
# can be rearranged to match the second input string; return false otherwise.

# scramble('javaass', 'jjss') == false
# scramble('rkqodlw', 'world') == true
# scramble('cedewaraaossoqqyt', 'codewars') == true
# scramble('katas', 'steak') == false
# scramble('scriptjava', 'javascript') == true
# scramble('scriptingjava', 'javascript') == true





# # 2

# # Find the length of the longest substring in a given string that is the same
# # in reverse; in other words, find the length of the longest palindrome substring
# # in a a given string. If the length of the input string is 0, return 0.

# longest_palindrome("a") == 1
# longest_palindrome("aa") == 2
# longest_palindrome("baa") == 2
# longest_palindrome("aab") == 2
# longest_palindrome("baabcd") == 4
# longest_palindrome("baablkj12345432133d") == 9
# longest_palindrome("") == 0





# # 3

# # Complete the method that takes a hash of users, and find the nexus: 
# # the user whose Codewrank is the closest or equal to their honor. 
# # Return the rank of this user. 
# # For each user, the key is the rank and the value is the honor.

# # If nobody has an exact rank/honor match, return the rank of the user who comes closest. 
# # If there are several users who come closest, return the the lowest rank (numeric value). 
# # The hash will not necessarily contain consecutive rank numbers; 
# # return the best match from the ranks provided.

# # Example
# #         rank    honor
# # users = {  1  =>  93,
# #           10  =>  55,
# #           15  =>  30,
# #           20  =>  19,    <--- nexus
# #           23  =>  11,
# #           30  =>   2 }
          
# p nexus({1 => 3, 3 => 3, 5 => 1}) == 3
# p nexus({1 => 10, 2 => 6, 3 => 4, 5 => 1}) == 3
# p nexus({1=>10000, 10=>1000, 100=>100, 1000=>10, 10000=>1}) == 100
# p nexus({1=>9999, 10=>999, 100=>99, 1000=>9, 10000=>0}) == 100
# p nexus({5=>30, 10=>25, 15=>20, 20=>15, 25=>10, 30=>5}) == 15
# p nexus({30=>5, 25=>10, 20=>15, 15=>20, 10=>25, 5=>30}) == 15





# # 4

# # Given two strings, return true if there is a substring that appears in both strings; 
# # return false otherwise. Substrings must be a minimum of two letters long.

# substring_test('Something', 'Fun') == false
# substring_test('Something', 'Home') == true
# substring_test('Something', '') == false
# substring_test('', 'Something') == false
# substring_test('BANANA', 'banana') == true
# substring_test('test', 'lllt') == false
# substring_test('', '') == false
# substring_test('1234567', '541265') == true
# substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtriciou') == true





#5

# Write a method that takes a positive integer and returns the next biggest
# number formed by the same digits; return -1 if no such number exists.


=begin

P
  - write a method that takes a positive integer and returns the next biggest
    number formed by the same digits; return -1 if no such number exists
  - input: an integer
  - output: an integer (next highest per criteria, or -1)
    - note: ~
E
  - see prompt
D
  - array
A
  > create all possible numbers from digits
    - potential method: permutation
    - initialize variable to array of digits from input 
    - invoke permutation, pass in size of digits array as arg, chain to_a
      - initialize a variable to the return value to save
    - transform each sub-array to an integer
      - for each transformation:
        - join the subarray
        - convert to integer
        - save result
  > sort numbers from lowest to highest
  > evaluate each number
    - iterate over numbers
      - for each iteration:
        - return number if it is higher than input
  > return -1


=end

def next_num(integer)
  
  digits = integer.digits
  
  numbers = digits.permutation(digits.size).to_a
  
  numbers.map! { |subarray| subarray.join.to_i }
  
  numbers.sort!
  
  numbers.each { |number| return number if number > integer }
  
  -1
end
  

p next_num(12) == 21
p next_num(513) == 531
p next_num(2017) == 2071
p next_num(9) == -1
p next_num(111) == -1
p next_num(531) == -1

