=begin

P
  - write a program that will ask for a user's name. The program will then greet 
    the user. If the user writes "name!" then the computer yells back to the user.
  - input: string
  - output: string w/ concat
  - note: ...
E
  - see book
D
  - irrelevant
A
  - string asking for name
  - store name ref in var
  - check for inclusion of bang char and output string based on inclusion
C
=end

puts ">> What is your name?"
name = gets.chomp

if name.include?("!")
  name.delete!("!")
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

