=begin

P
  - write a method that takes two arrays as args and returns an array that 
    contains all of the values from the arg arrays. there should be no 
    duplication of values in the returned array at all
  - input: two arrays
  - output: new array object
  - note: making assumption w/ output
E
  - see book
D
  - arrays
A
  - combine arrays
  - make sure they aren't nested
  - eliminate dupes
C
=end

def merge(arr1, arr2)
  arr1.append(arr2).flatten.uniq
end

# I KNEW there was a method for this, but I couldn't remember it nor could I find it
# remember: Array#| (pipe) returns the union of two arrays..
# "Set Union — Returns a new array by joining ary with other_ary, excluding any 
# duplicates and preserving the order from the given arrays.'

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]