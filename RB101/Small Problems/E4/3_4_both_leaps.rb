#***review on second go-around***

def leap_year?(year)
  if year < 1752 && year % 4 == 0
    true
  elsif year % 4 == 0 && year % 100 == 0
    actual_leap?(year)
  elsif year % 4 == 0
    true
  else
    false
  end
end
    
def actual_leap?(year)
  year % 400 == 0
end



p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

# my solutions aren't very good right now for some reason...
# don't get discouraged. forge ahead

# forge ahead!

# why can't I wrap my ahead around this problem and the last for some reason? what is going on?

