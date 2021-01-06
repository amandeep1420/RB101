def get_grade(s1, s2, s3)
  score = (s1 + s2 + s3) / 3
  if 90 <= score && score <= 100
    'A'
  elsif 80 <= score && score < 90
    'B'
  elsif 70 <= score && score < 80
    'C'
  elsif 60 <= score && score < 70
    'D'
  else
    "F"
  end
end

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

# I really wanted to use a case statement here but wasn't sure how - looks like you can just write a range and it does the rest automatically
# so, for example

case score
when 90..100 then 'A'
else              'F'
end

# saves a lot of lines, easy to read, etc.

# "this takes advantage of the fact that the comparison used by the case statement returns true if the range includes the other object
#  essentially calling (range).include?(other_object)"