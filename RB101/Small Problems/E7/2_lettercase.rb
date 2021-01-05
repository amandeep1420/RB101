BIG_ALPHA = ("A".."Z")
SMALL_ALPHA = ("a".."z")

def letter_case_count(string)
  count_hash = { lowercase: 0, uppercase: 0, neither: 0 }
  
  string.chars.each do |char|
    count_hash[:lowercase] += 1 if SMALL_ALPHA.include?(char)
    count_hash[:uppercase] += 1 if BIG_ALPHA.include?(char)
    count_hash[:neither] += 1 if !SMALL_ALPHA.include?(char) && !BIG_ALPHA.include?(char)
  end
  
  count_hash
end

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
  
  
# I think I'll pass on learning much about regex until it's brought up in a lesson..