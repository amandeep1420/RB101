=begin

P
  - write a method that takes a string argument and returns a new string that contains the value of the
    original string with all consecutive duplicate characters collapsed into a 
    single character. may not use string#squeeze/squeeze!
  - input: string
  - output: fixed string
  - note: input string may be empty
  - note: string with no repeating chars should be unaffected
  - note: case unimportant
  - note: wordspace chars should remain intact
E
  - see book
D
  - string, likely use array as well
A
  - first, split string into array
  - next, select chars so long as last char is not the same
    - need to store somewhere, need to iterate

C
=end

def crunch(str)
  str.split('').each_with_object('') { |chr, str| str << chr if str[-1] != chr }
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

def crunch(str)
  str.gsub(/[A-Za-z0-9]{2,}/, 'a')
end
p crunch('ddaaiillyy ddoouubbllee')
