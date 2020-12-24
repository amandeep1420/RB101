# def multisum(number)
#   multiples = []
#   for multiple in (1..number)
#     multiples << multiple if multiple % 3 == 0 || multiple % 5 == 0
#   end
#   multiples.sum
# end

# puts multisum(3) == 3
# puts multisum(5) == 8
# puts multisum(10) == 33
# puts multisum(1000) == 234168

# this was my original solution

def multisum(number)
  (1..number).select { |num| num % 3 == 0 || num % 5 == 0 }.reduce(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168

# this was a mimicked solution after viewing other submissions

# this problem, overall, only took me a hot minute to solve

# the book created a helper method to determine multiples, which I like, but their multisum method seems overly verbose to me, a neophyte

# I like how reduce sounds better than inject - seems more indicative of what the method actually does tbh

