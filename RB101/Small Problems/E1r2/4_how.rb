# my answer:

def count_occurrences(array)
  
  counted = {}
  
  array.uniq.each do |element|
    counted[element] = array.count(element)
  end
  
  counted.each do |x, y|
    puts the stuff  
end












=begin

PEDAC

Problem
- input: array
- output: hash
- summary: write a method that counts the number of occurences of an element in an array (case sensitive) and prints them
Examples
- see book
Data structure
- input is an array, output is a hash
Algorithm
- define method that takes an array as an argument
- ended up looking at my old solution - why do I have such a difficult time with this problem?

