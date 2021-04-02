=begin

P
  - write a method that takes a sentence string as input and returns the same 
    string with any sequence of words representing single-digit numbers 
    converted to a string of digits with spaces between each digit
  - input: string
  - output: formatted string
  - note: I will account for case just to be safe
E
  - see book
D
  - array
A
  - create key for string conversion
  - split string, then transform, lol (not iterate)
C
=end

KEY = %w(zero one two three four five six seven eight nine)

def word_to_digit(string)
  string.split.each do |word| 
    alphas = word.sub(/\W/, '').downcase
    word.gsub!(/\b[a-z]+\b/i, KEY.index(alphas).to_s) if KEY.include?(alphas)
  end.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
