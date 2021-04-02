=begin

P
  - write a method that takes a string as an arg and returns true if all parentheses
    in the string are properly balanced - false otherwise. to be properly 
    balanced, parentheses must occur in matching pairs.
  - input: string
  - output: boolean
  - note: balanced pairs must start with a (
  - note: no empty strings
E
  - see book
D
  - hmm.
A
  - delete everything from string other than parentheses and capture in var
  - split result string and iterate with a 0 integer object
  - for each char:
    - if '(', add one; if ')', subtract one
    - return false if integer object is ever negative
C
=end

def balanced?(string)
  only_parentheses, counter = string.delete('^()'), 0
  only_parentheses.split('').each do |char|
    char == '(' ? counter += 1 : counter -= 1
    return false if counter < 0
  end
  counter == 0 
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

