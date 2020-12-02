# def greeting(name)
#   if name.end_with?('!')
#     puts "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING?"
#   else
#     puts "Hello #{name}."
#   end
# end

# me = "Jack!"
# greeting("Bob")
# greeting("Bob!")
# greeting(me)
# puts me

# only took a minute.

# their evaluation methodology is better - matches the criteria exactly, whereas mine just checks for the presence of a "!" without checking location.
# refactored a bit.

# F.E. using their code below:

print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name.chop!
  puts name
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  name.chomp!
  puts "Hello #{name}."
end

