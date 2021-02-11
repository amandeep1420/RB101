=begin

P
  - write a method that takes a string of digits and returns the appropirate number as an integer;
    we may not use any standard conversion methods
  - input: string
  - output: integer
  - note: input will always be a positive integer
E
  - see book
D
  - might use a hash here for reference
A
  - declare hash to use for conversion with numstring as keys and nums as vals
  
C
=end



def string_to_integer(str)
  ref = Hash.new { |hash, key| hash[key] = key.to_i }
  ('0'..'9').each { |str| ref[str] }
  str = str.split('').map { |str| ref[str] }
  num = 0
  str.each { |val| num = num * 10 + val }
  num
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

# we got it right in the end, but it took us a bit to realize join was returning a string
# we didn't do PEDAC well with this one...
# you're being lazy and unfocused right now