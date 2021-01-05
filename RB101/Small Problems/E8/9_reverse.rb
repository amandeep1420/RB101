def reversed_number(num)
  num.digits.join.to_i
end

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

# cool, your solution is "slick" - review the book one

def reversed_number(number)
  string = number.to_s
  reversed_string = string.reverse
  reversed_string.to_i
end

# their solution has a more logical flow - it is very simple and straightforward
# notice how using #digits, then #join tripped us up for a moment - as #join combines all array elements into a string