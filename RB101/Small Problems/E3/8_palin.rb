def palindrome?(string)
  string == string.reverse 
end

palindrome?('madam') 
palindrome?('Madam')          # (case matters)
palindrome?("madam i'm adam")  # (all characters matter)
palindrome?('356653') 

def arr_palindrome?(array)
  array == array.reverse
end

# methods with ? should return true or false - doesn't need to be explicit, 
# just have to make sure nil isn't being returned.

