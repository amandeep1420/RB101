*** definitely redo on second go-around***

# this one is a little tricky...I could write an overly verbose method to do this, but I feel like there should be some method from the Time class
# that's relevant..

def century(year)
  century = (year.to_f) / 100
  
  if century != (year / 100)
    century = (century + 1).to_i.to_s
  else
    century = century.to_i.to_s
  end
  
  endings = {st: [1],
             nd: [2],
             rd: [3],
             th: [4, 5, 6, 7, 8, 9, 0]
  }
  
  endings.each do |k, v|
    if v.include?(century.to_i.digits.reverse.last)
      century << k.to_s
    end
  end
  
  century
end

puts century(2000) 
puts century(2001) 
puts century(1965)
puts century(256) 
puts century(5)
puts century(10103) 
puts century(1052) 
puts century(1127) 
puts century(11201) 

# this one is killing me, lol - peeked at the length of the book solution...it's 9 lines shorter and addresses the teens...
# ended up looking at book solution - this one is really frustrating, argh. didn't want to write a ton of code, and I forgoed writing a helper
# method as I wasn't sure if that was something we should be engaging in with these problems
# dang it, man.

