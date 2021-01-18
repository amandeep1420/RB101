NUMWORDS = {
  'zero' => '0',
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9'
}

def word_to_digit(str)
  split_str = string.split(/(\s|\.)/)
  split_str.map { |word| NUMWORDS.include?(word) ? NUMWORDS[word] : word }.join
end

puts word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# not sure why the array/index strategy didn't properly come to mind...
# next several weeks are gonna be practice, practice, practice I suppose
# gotta join some study groups, get some live coding going, do the test prep
# not going to let all that time and energy and work go to 'waste'; we WILL improve our speed, we WILL keep moving forward
  