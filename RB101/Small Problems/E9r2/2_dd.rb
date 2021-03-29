=begin

P
  - write a method that reutns 2 times the number provided as an arg, unless
    the arg is a double number; double numbers should be returned as-is
  - input: integer
  - output: integer based on above criteria
  - note: zero should be valid input
  - note: no floats or negatives based on examples
E
  - see book
D
  - integers, array likely, possible strings
A
  - convert to string, then split
    - if length is odd, double integer
  - else, evaluate

C
=end

def twice(num)
  num.digits[0...num.digits.size*0.5] == num.digits[num.digits.size/2..-1] ? num : num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10

# think I might be focusing too much on one-line solutions at the detriment of readability