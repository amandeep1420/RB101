=begin

P
  - write a method that takes a first name, a space, and a last name passed as a 
    single string arg, and returns a string that contains the last name, a comma, 
    a space, and the first name
  - input: string
  - output: formatted string
  - note: 'returns -a- string', do not mutate original
E
  - see book
D
  - string
A
  - split string
  - reverse result array
  - join with ", "
C
=end

def swap_name(name)
  name.split(' ').reverse.join(", ")
end

p swap_name('Joe Roberts') == 'Roberts, Joe'