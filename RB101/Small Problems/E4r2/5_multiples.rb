=begin

P
  - write a method that searches for all multiples of 3 or 5 that lie between 1 and 
    some other numbers, and then computes the sum of those multiples. 
  - input: integer
  - output: integer
  - note: common multiple is 15
E
  - see book
D
  - likely going to use a range
  - hmmm, could use #upto
  ***going to intentionally use upto here***
A
  - declare storage var
  - call 1.upto(arg), adding to storage var if multiple
  - return var
C
=end

# def multisum(max)
#   sum = 0
#   2.upto(max) { |num| sum += num if num % 3 == 0 || num % 5 == 0}
#   sum
# end

def multisum(max)
  (0..max).reduce { |sum, n| (n % 3 == 0 || n % 5 == 0) ? sum + n : sum + 0 }
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
  
