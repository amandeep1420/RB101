=begin

P
  - input: year (integer)
  - output: number of friday the 13ths (integer)
  - write a method that returns the number of Friday the 13ths in a year
  - may assume that year is greater than 1752
  - may assume that year will remain in use for forseeable future
E
  - see book
D
  - hmm
A
  - use year to find year via time class
  - initalize 'fridays' counter at 0
  - initialize 'day' at 1, 'month' at 1
  - loop: until month == 13
    - create date object for day
    - is it valid? 
        - yes: is it a friday?
          - yes: add 1 to friday counter
          - no: next
        - no
          - next
  - end
  - return friday counter
C
Date.valid_date?
Date.new
Dateobject.friday?
=end


require 'date'

def friday_13th(year)
  day = 1
  month = 1
  count = 0  
  until month == 13
    case Date.valid_date?(year, month, day)
    when true
      count += 1 if Date.new(year, month, day).friday? && day == 13
      day += 1
    else 
      day = 1
      month += 1
    end
  end
  count
end

def friday_13th(year)
  (1..12).to_a.each_with_object([]) do |month, count_arr|
    count_arr << 1 if Date.new(year, month, 13).friday?
  end.sum
end

puts friday_13th(2015) #== 3
# puts friday_13th(1986) == 1
# puts friday_13th(2019) == 2
  
  
  
  

#puts Date.(2015, 12, 33)