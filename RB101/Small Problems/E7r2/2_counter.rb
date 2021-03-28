=begin

P
  - write a method that takes a string and returns a hash that contains 3 entries:
    one represents the number of chars in the string that are lowercase, one the
    number of chars that are uppercase, and one that are neither
  - input: string
  - ouput: hash
  - note: string may be empty
  - note: string may have spaces
E
  - see book
D
  - hash
A
  - establish hash for recording
  - next, evaluate each char

=end

def letter_case_count(string)
  hash = { lowercase: 0, uppercase: 0, neither: 0 }
  string.split('').each_with_object(hash) do |char, hash|
    case
    when ('a'..'z').include?(char) then hash[:lowercase] += 1
    when ('A'..'Z').include?(char) then hash[:uppercase] += 1
    else hash[:neither] += 1
    end
  end
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }