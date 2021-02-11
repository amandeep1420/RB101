=begin

P
  - write a program that will ask a user for an input of a word/words and give back
    char count. 
  - input: string from user
  - output: string stating char count
  - note: spaces do not count as chars
E
  - see book
D
  - strings
A
  - string stating "Please write word or multiple words: " (note, book has input next to string, so use print)
  - take input string, delete spaces, count characters, store all that
  - output string stating "There are #{count} characters in "#{string}"."
  - note: we have to re-use the input string
C
=end

print "Please write word or multiple words: "
string = gets.chomp
count = string.delete(" ").size
puts "There are #{count} characters in \"#{string}\"."


# this is the book solution to a T; I am so happy