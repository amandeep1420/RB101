=begin

P
  - write a method that takes a year as input and returns the century + appropriate suffix
    as a string
  - input: integer
  - output: string
  - note: new centuries begin in years that end with 01; 1901-2000 == 20th century
E
  - see book
D
  - likely going to use arrays here
A
  - first, determine how to find century
    - if year / 10 has a remainder, then the century is year / 10 + 1
    - else, it's the year / 10
  - good
  - next, convert to string
  - next, case statement for suffix
  - done
    
    
C
=end

def century(year)
  century = (year % 10 == 0 ? (year / 100) : (year / 100) + 1).to_s
  
  return century + 'th' if century[-2] == '1'
  
  case century[-1]
  when '1' then century + 'st'
  when '2' then century + 'nd'
  when '3' then century + 'rd'
  else century + 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'