=begin

P
  - build a program that displays when the user will retire and how many 
    years she has to work till retirement.
  - inputs: integers
  - outputs: integers
  - ...
E
  - see book
D
  - irrelevant
A
  - string requesting age
  - store age input as integer
  - string requesting age for retirement
  - store desired retirement age as integer

C
=end

puts ">> What is your age?"
age = gets.chomp.to_i

puts ">> At what age would you like to retire?"
retirement_age = gets.chomp.to_i

year = Time.new.year
years_to_go = retirement_age - age

puts ">> It's #{year}. You will retire in #{year + years_to_go}."
puts ">> You have only #{years_to_go} years of work to go!"

