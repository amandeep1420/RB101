def leading_substrings(string)
  string_arr = []
  string.chars.each_index do |idx|
    string_arr << string[0, idx + 1]
  end
  string_arr
end

leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# do this one again...I don't like how looping structures in this section are giving us a bit of trouble for some reason