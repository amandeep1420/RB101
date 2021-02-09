=begin

P
  - write a method that that takes two numbers; it should print out all primes
    between the two numbers. don't use the 'prime' class.
  - assuming numbers are positive
E
  - see vid
D
  - nums, likely use an array for storage/reference
A
  - establish a storage array
  - oh! or call select on the range
    - in the block, we check for prime status
    - how will we go about that?
    - no more hack and slash; come up with a solution
    - we could...create a storage array for numbers that had no leftovers
    - if array is not empty, number is not prime
  
C
  - code it up~
=end



def find_primes(n1, n2)
  (n1..n2).select do |num|
    divisors = (2...num).to_a
    clean_divisors = []
    divisors.each { |divisor| clean_divisors << divisor if num % divisor == 0 }
    clean_divisors.empty?
  end
end

p find_primes(3, 10)