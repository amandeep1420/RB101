=begin

P   
  - write a method that takes two integers as args; the first is a count, the second
    number of a sequence. the method should returns an array that contains count
    number of elements with values of elements being multiples of the starting num
  - input: two integers
  - output: array
  - note: count arg is always 0 or greater
  - note: starting num can be any integer
  - note: if count is 0, empty array should be returned
  - note: if starting num is negative, all elements should be negative
E
  - see book
D
  - array
A
  - ..........
=end

# to think, I was going to increment by 1 and check every time...
# obviously the better way is to multiply by the starting number
# solutions to digest:

def sequence(count, start)
  count.times.map { |iteration| (iteration + 1) * start }
end

def sequence(num1, num2)
  num2.step(by: num2).take(num1)
end

# break it down:
# here, num1 is the number of elements we need, and num2 is the first element; remember, we need multiples of num2
# so, we take num2 (the start) and step by itself (which will increment "by" the value given as an argument)
# this returns an array when paired with #take; the argument passed into take determines the number of elements the returned array will have
# what a perfect solution