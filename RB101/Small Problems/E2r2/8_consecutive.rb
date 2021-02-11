=begin

P
  - write a program that asks the user to enter an integer greater than zero,
    then asks if the user wants to compute the sum or product of all numbers 
    between 1 and the entered integer
  - input: integer, string for sum or product answer
  - output: strings and such, see example
  - note: always positive
  - note: no input validation specified
  - note: accounted for case
E
  - see prompt
D
  - range based on user input
A
  - string asking for integer
  - store input as integer
    - I want to try to make this solution as compact as possible
    - wow, we can call reduce on a range
    - hehehe, I have an idea
  - array with :+ and :*
  - I have an ideaaaaa
C
=end

puts ">> Please enter an integer greater than 0:"
last = gets.chomp.to_i

until last > 0
  puts ">> Invalid input; please enter an integer greater than 0:"
  last = gets.chomp.to_i
end

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
op = gets.chomp.downcase

until op == 's' || op == 'p'
  puts ">> Invalid input; please enter either 's' or 'p'."
  op = gets.chomp.downcase
end

if op == 's'
  answer = 0
  1.upto(last) { |num| answer += num }
  puts ">> The sum of the integers between 1 and #{last} is #{answer}."
else
  answer = 1
  1.upto(last) { |num| answer *= num }
  puts ">> The product of the integers between 1 and #{last} is #{answer}."
end

# I liked the range solution better anyway
# ahhhhh, upto returns the number it was called on....so weird....it's also mutating, too
# good to know, good to know



# Integer#upto returns the number it was called on and is a mutating/destructive method

