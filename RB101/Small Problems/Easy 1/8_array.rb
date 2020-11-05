# my answer:

=begin

Problem
  - write a method that takes an array containing integers and returns the average of all the elements
  - input array will never be empty
  - input array will always be positive integers
  - input: array of positive integers
  - output: integer
Examples
  - puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
  - puts average([1, 5, 87, 45, 8, 8]) == 25
  - puts average([9, 47, 23, 95, 16, 52]) == 40
Data
  - arrays and integers..
Algorithm
  - declare zero variable
  - iterate over array, adding each number to the variable
  - divide by array length once done for output
Code

=end 

def average(array)
  
  sum = 0
  
  array.each do |num|
    sum += num 
  end 
    
  (sum / (array.size)).to_f
end 

puts average([1.3, 2.3, 50.7]) == 18.1  #true
puts average([1, 6]) == 3 #true
puts average([1, 5, 87, 45, 8, 8]) == 25  #true
puts average([9, 47, 23, 95, 16, 52]) == 40  #true

# book solution is so much more succinct...dang.

# key takeaways: .times counts up, starting from 0. when using times, you can specify a block - the parameter represents the current count.
# key takeaways: Enumerable#reduce (.reduce) adds up all elements of an array using a binary operation - allows blocks to be passed in, flexible.
# key takeaways: Array#sum exists...lol...
# key takeaways: Array#length and Array#size are the same, Array#count allows a criteria to be specified if so desired.