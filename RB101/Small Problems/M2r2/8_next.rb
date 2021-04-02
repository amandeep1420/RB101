=begin

P
  - write a method that takes a single integer as an arg and returns the next
    featured number that is greater than the arg. Return an error message if there
    is no next featured number.
  - input: integer
  - output: either integer or error message
  - note: the requirements for a 'featured number' are as follows:
            - odd number
            - multiple of 7
            - no repeat digits
E
  - see book
D
  - hmm..
A
  - free shooting
C
=end

# def featured(int)
#   counter = int / 7
#   until (counter * 7) > 9876543210
#     counter += 1
#     num = counter * 7
#     return num if num.odd? && num.digits == num.digits.uniq
#   end
#   "There is no possible number that fulfills those requirements"
# end

def featured(int)
  for num in (int + 1...9_999_999_999) 
    return num if num.odd? && num % 7 == 0 && num.digits == num.digits.uniq
  end
  "There is no possible number that fulfills those requirements"
end
    
    
p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987