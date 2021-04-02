=begin

P
  - write a method that returns the number of friday the 13ths in a year given 
    by an arg. you may assume that the year is greater than 1752 and that it will
    remain in use for the forseeable future.
  - input: integer representing year
  - output: integer representing friday the 13ths in given year
E
  - see book
D
  - hmm..
A
  - 
=end

def friday_13th(yy)
  (1..12).to_a.map { |mm| Time.new(yy, mm, 13).friday? ? 1 : 0 }.sum
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2