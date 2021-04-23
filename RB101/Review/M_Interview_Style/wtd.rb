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

def fix_first_letter(words)
  words.map do |word|
    word = word.chars
    code_parts, alpha_chars = word.partition { |char| char == char.to_i.to_s }
    fixed_letter = code_parts.join.to_i.chr
    fixed_letter
    # rest_of_word = alpha_chars.join
    # fixed_letter + rest_of_word
  end
end



p fix_first_letter(['11cat', '22bat'])


# def decipher_this(string)
#   words = string.split(' ')
  
#   words = fix_first_letter(words)
# end

# p decipher_this('11cat')