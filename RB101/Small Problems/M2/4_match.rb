=begin

P
  - input: string
  - output: boolean
  - summary: write a method that takes a string as an argument and returns true
             if all parentheses in the string are properly balanced (or false).
E
  - see book
D
  - string, arrays..
A
  - first, remove everything that's not a parenthesis from the string and store 
  - excellent; we now have a string of just parentheses
  - we write a conditional that returns false if it starts with a )
  - next, we compare the counts for reach and return boolean based on comparison
  
  
  
=end

def balanced?(string)
  string = string.delete("^()")
  return false if string[0] == ")" || string[-1] == "("
  string.count("(") == string.count(")")
end

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false