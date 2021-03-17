=begin

P
  - write a method that takes an array as an argument, and reverses its elements
    in place; the returned array should be the same array object
  - input: array
  - output: array, mutated
  - note: cannot use #reverse or #reverse!
E
  - see book
D
  - arrays
A
  - 
  
C
=end

def reverse!(array)
  array.sort! { |e1, e2| array.index(e2) <=> array.index(e1) }
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == []
