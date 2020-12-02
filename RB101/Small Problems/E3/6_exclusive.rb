def xor?(e1, e2)
  (e1 == false || e2 == false) && (e1 == true || e2 == true) ? true : false
end


puts xor?(5.even?, 4.even?) 
puts xor?(5.odd?, 4.odd?) 
puts xor?(5.odd?, 4.even?) 
puts xor?(5.even?, 4.odd?) 

# book's idiomatic solution:

def xor?(value1, value2)
  !!((value1 && !value2) || (value2 && !value1))
end

# even simpler - stolen from submitted solutions:

def xor?(a, b)
  !a != !b
end

# ! forces a boolean return value. !! returns the original truthiness as a boolean.