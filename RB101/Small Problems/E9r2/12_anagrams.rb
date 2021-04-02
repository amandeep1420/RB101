=begin

P
  - given an array, write a program that prints out groups of elements that are
    anagrams. view output for format
  - input: array of strings
  - output: anagram arrays on their own lines
  - note: all strings are four chars long
  - note: all strings are lowercase
E
  - see book
D
  - arrays
A
  - establish master array for storage
  - until original array is empty
    - checker word = first element from original array, split, sorted
    - partition original array and re-assign second as original array: first var is all matches, second is leftovers
    - move first var to master storage
    - repeat loop
  - p master array
C
=end

def anagrams(list)
  groups = []
  until list.empty?
    check = list[0].split('').sort
    subgroup, list = list.partition { |word| check == word.split('').sort }
    groups << subgroup if subgroup.size > 1 # filters single-element groups
  end
  groups.each { |group| p group }
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon', 'bigdaddy']
          
anagrams(words)

p "------"

def get_anagram_groups(arr)
  group_hash = arr.group_by { |word| word.chars.sort }
  group_hash.values.each { |group| p group.sort if group.size > 1 }
end 

get_anagram_groups(words)