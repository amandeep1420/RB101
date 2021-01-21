=begin

P
  - input: a starting integer
  - output: the next 'featured' number greater than the arg
  - write a method that takes a single integer as an argument, and returns the next
    featured number that is greater than the argument. 
  - a featured number has the following:
      - odd number
      - multiple of seven
      - digits do not repeat
E
  - see book
D
  - TBD, nothing sticks out right now
A
  - first, create a method that returns true if a number is a featured number
  - next, create a new method that will implment the first
  - copy the arg value, init var with it
  - create a loop 
    - that adds 1 until the number is featured and greater than the arg
    - how do we figure out break return if error num?
  
  


=end

IMPOSSIBLE = "There is no possible number that fulfills those requirements."

def featured?(num)
  num.odd? && num % 7 == 0 && num.digits == num.digits.uniq
end

def featured(num)
  new_num = num
  until featured?(new_num) && new_num > num
    new_num += 1
    break if new_num > 9_999_999_999
  end
  featured?(new_num) ? new_num : IMPOSSIBLE
end

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987
puts featured(9_999_999_999)

# their logic is more efficient - adds fourteen to the first odd number encountered
# that's higher than the arg that's div by 7 until digits are unique
# way less calculation
# always more to learn