=begin

P
  - write a method that takes a string and then returns a hash that contains 
    3 entries: one for % of chars that are lowercase, same for upper, same for
    neither. 
  - input: string
  - output: hash
  - note: string will alway contain at least one char
  - note: see book for hash format
  - note: floats only show tenths place; non-floats do not...hm..
E
  - see book
D
  - hash
A
  - establish variable repping total chars
  - establish empty hash
  - establish vars to count for each case type
  - iterate, adding to total for each var based on type
C
=end

def letter_percentages(string)
  all = string.size
  count = {lowercase: 0, uppercase: 0, neither: 0}
  
  string.split('').each do |char|
    case
    when ('a'..'z').include?(char)  then count[:lowercase] += 1
    when ('A'..'Z').include?(char)  then count[:uppercase] += 1
    else                                 count[:neither] += 1
    end
  end

  count.each do |type, total| 
    total = total.to_f if ((total * 100) % all) != 0
    count[type] = (total * 100) / all
  end
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
  
  
  
  