=begin

P
  - write a method that takes two args and returns true if exactly one arg is truthy.
  - input: two boolean args
  - output: boolean
  - note: looking for explicit boolean, not truthy/falsey result (not implicit)
E
  - see book
D
  - n/a
A
  - declare method and params
  - return true if boolean rep of one arg does not equal other arg
  - lol, we are checking if their inherent truthiness is opposite, yet we called one bang on one and two on the other...silly head
C
=end

def xor?(arg1, arg2)
  !!arg1 != !!arg2
end

p xor?(5.even?, 4.even?) #== true
p xor?(5.odd?, 4.odd?)# == true
p xor?(5.odd?, 4.even?)# == false
p xor?(5.even?, 4.odd?) #== false