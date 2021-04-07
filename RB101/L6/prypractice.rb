# # example_10

# require 'pry'
# require 'pry-byebug'

# def fizzbuzz(arr)
#   arr.map do |num|
#     if num % 5 == 0 && num % 3 == 0
#       'FizzBuzz'
#     elsif num % 5 == 0
#       'Buzz'
#     elsif num % 3 == 0
#       'Fizz'
#     else
#       num
#     end
#   end
# end

# p fizzbuzz([1, 3, 5, 6, 7, 8, 10, 3, 15, 9]) == [1, 'Fizz', 'Buzz', 'Fizz', 7, 8, 'Buzz', 'Fizz', 'FizzBuzz', 'Fizz']

require 'pry'
require 'pry-byebug'

def double_num(num)
  num * 2
end

def double_evens(arr)
  arr.map do |num|
    num.even? ? double_num(num) : num
  end
end

array = [1, 2, 3, 4, 5]

binding.pry

p double_evens(array) == [1, 4, 3, 8, 5]

