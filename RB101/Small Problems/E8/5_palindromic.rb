def leading_substrings(string)
  string_arr = []
  string.chars.each_index do |idx|
    string_arr << string[0, idx + 1]
  end
  string_arr
end

def substrings(string)
  all_subs = []
  until string.empty? 
    all_subs << leading_substrings(string)
    string = string.chars
    string.delete_at(0)
    string = string.join
  end
  all_subs.flatten
end

def palindromes(string)
  substrings(string).select do |string| 
    (string == string.reverse) && string.length >= 2
  end
end

#puts palindromes('abcd') == []
#puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
#puts palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

# we have a working solution - moving on...