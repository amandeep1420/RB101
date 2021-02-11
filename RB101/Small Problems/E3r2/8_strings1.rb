=begin

P
  - write a method that returns true if the string passed in as an arg is a palindrome, 
    false otherwise. 
  - input: string
  - output: boolean
  - note: every single char matters
E
  - see book
D
  - strings..
A
  - reverse string and compare to original....
  - this feels like a cop out
C
=end

def palindrome?(string)
  string.reverse == string
end

#or

def palindrome?(input)
  copy = input.clone
  reversal = []
  index = -1
  until copy.size == input.size
    reversal << copy[index]
    index -= 1
  end
  reversal == input
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
p palindrome?([1, 2, 3, 2, 1])