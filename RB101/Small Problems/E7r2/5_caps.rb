=begin

P
  - write a method that takes a string and returns a new string that contains the
    original value using a staggered cap scheme (in which every other char is 
    capitalized and the remaining chars are lowercase). chars that are not
    letters should not be changed -but- should count as chars when switching
    between upper and lowercase
  - note: no empty strings
E
  - see book
D
  - array
A
  - split string into array
  - establish counter object
  - iterate over array, transforming each element
    - if counter is even, upcase letter
    - if counter is odd, downcase letter
    - increment counter by 1
  - join result array
C
=end

def staggered_case(str)
  counter = 0
  str.split('').map do |char|
    counter += 1
    counter.odd? ? char.upcase : char.downcase
  end.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'