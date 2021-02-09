=begin

P
  - write a method that ocunts the number of occurrences of each element in a given array
  - input: array with various elements
  - output: elements along with their occurrence count
  - note: elements are strings in this problem
  - note: elements are case sensitive
E
  - see book
D
  - I think I'll use a hash here
A
  - declare empty hash
  - iterate over array, using key-value assignment to assign count to element
  - output contents of hash
C

=end

def count_occurrences(array)
  count = array.uniq.each_with_object({}) { |el, hsh| hsh[el] = array.count(el) }
  count.each { |k, v| puts "#{k} => #{v}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]


count_occurrences(vehicles)