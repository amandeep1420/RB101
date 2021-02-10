=begin

P
  - print all od dnumbers from 1 to 99, inclusive, to the console, w/ each number
    on a separate line
  - no inputs
  - output is already specified...
  - note: inclusive
E
  - n/a
D
  - use a range
A
  - establish range
  - iterate over range, printing num if odd
C
=end

# for i in (1..99)
#   puts i if i.odd?
# end

# or

nums = (1..99).to_a

nums.each { |i| puts i if !i.even? }