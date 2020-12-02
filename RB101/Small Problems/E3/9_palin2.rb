# I knew I was missing a simple/idiomatic solution despite attempting to scan
# the docs - so I didn't write one out. Completely unaware of how everyone 
# referred to alphanumeric characters (the a-z0-9 syntax - where did we discuss this?)

# learned about .count and .delete - let's try writing a solution w/o looking back.

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  string == string.reverse
end

real_palindrome?('madam')    
real_palindrome?('Madam')               # (case does not matter)
real_palindrome?("Madam, I'm Adam")     # (only alphanumerics matter)
real_palindrome?('356653')    
real_palindrome?('356a653')    
real_palindrome?('123ab321')   

# they mentioned regex...we've barely discussed regex at all. I hope I didn't overlook something.

# do this one again, definitely.