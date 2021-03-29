=begin

P
  - write a method which takes a grocery list (array of fruits with quantities
    and coverts it into an array of the correct number of each fruit
  - input: array with subarray pairs
  - output: array
  - no edge cases to really consider based on example
E
  - see book
D
  - arrays
A
  - transform each sub-array
    - multiply first element by second element
  - flatten returned array
C
=end

def buy_fruit(list)
  list.each_with_object([]) { |subarr, total| subarr[1].times { total << subarr[0] }}
end
p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
