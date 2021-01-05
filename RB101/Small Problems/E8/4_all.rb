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
    string.delete!(string[0])
  end
  all_subs.flatten
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]