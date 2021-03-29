=begin

P
  - write a method that takes a string arg and returns true if all the alpha 
    chars inside the string are uppercase, false otherwise. non-alpha chars 
    should be ignored
  - input: string
  - output: boolean
  - note: string may be empty, return true if so
E
  - see book
D
  - strings
A
  - use a regex
  - if match regex for lowercase, return true; return false otherwise
C
=end

def uppercase?(string)
  !(string =~ /[a-z]/)
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

# I overthought it; could've just done string == string.upcase, hehe
# so it goes