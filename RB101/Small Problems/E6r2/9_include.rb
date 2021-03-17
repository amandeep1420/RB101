=begin

P
  - write a method that takes an array and a search value as args;
    the method should return true if the search value is in the array
    or false if not.
  - input: array, search value
  - output: boolean
  - note: may not use Array#include? in solution
E
  - see book
D
  - irrelevant
A
  - iterate over array, return true if element matches search value
  - else return false
C
=end

def include?(arr, val)
  arr.each { |el| return true if el == val }
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false