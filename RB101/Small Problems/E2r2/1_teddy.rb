=begin

P
  - write a program that randomly generates and prints Teddy's age; to get the age, 
  you should generate a random number between 20 and 200
  - note: program needs to print age
E
  - see book
D
  - irrelevant
A
  - first, pull random number from range...cannot remember how to use rand...
  - converting range to array and grabbing rand using array method
  - next, need to print that in the specified string
C
=end

def find_their_age
  puts ">> Who's the person in question?"
  name = gets.chomp
  name = 'Teddy' if name == ''
  num = (20..200).to_a.sample
  puts ">> #{name} is #{num} years old!"
end

find_their_age

