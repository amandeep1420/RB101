# def integer_to_string(integer)
#   integer = -integer if integer < 0
#   integer.digits.reverse.join
# end


# def signed_integer_to_string(integer)
#   string = integer_to_string(integer)
#   if integer < 0
#     string.prepend('-')
#   elsif integer > 0
#     string.prepend('+')
#   else
#     string
#   end
# end
  
# puts signed_integer_to_string(4321) == '+4321'
# puts signed_integer_to_string(-123) == '-123'
# puts signed_integer_to_string(0) == '0'

DIGITS = %w( 0 1 2 3 4 5 6 7 8 9 )

def integer_to_string(integer)
  integer *= -1 if integer < 0
  
  integer = integer.digits.reverse
  
  string = ''
  
  integer.each { |digit| string << DIGITS[digit] }
  
  puts string
end

integer_to_string(4321) #== '4321'
integer_to_string(0) #== '0'
integer_to_string(5000) #== '5000'


# some scratch work and stuff

.abs is useful