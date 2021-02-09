=begin

P
  - write a method that takes one argument, a string, and returns a new string with the words in reverse order
  - input: a string
  - output: a string
  - note: account for empty string
  - note: maintain spacing?
E
  - see book
D
  - likely use an array here
A
  - first, we split string into an array
  - next, we reverse contents of array
    - welp, there's literally an array#reverse method, lol
    - it's non mutating
  - re-join reversed array using spaces 
C

=end

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'