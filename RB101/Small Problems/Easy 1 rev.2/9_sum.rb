# my answer:

def sum(int)
  int.digits.reduce(:+)
end 

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# took me approx. 30-45 seconds. good. 