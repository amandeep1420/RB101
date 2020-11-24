# my answer:

def calculate_bonus(int, boo)
  boo == true ? int / 2 : 0
end 

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000


# approx. 30 seconds. good. could've refactored to just boo ? as boo is representative of a boolean.