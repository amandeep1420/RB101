DIGITS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  '10' => 10
}


# def string_to_signed_integer(string)
  
#   digit_array = string.chars.map { |digit| digit = DIGITS[digit] }.compact
                
#   integer = 0
  
#   digit_array.each { |digit| integer = integer * 10 + digit }
  
#   integer *= -1 if string[0] == '-'
  
#   integer
# end

def string_to_integer(string)
  
  digit_array = string.chars.map { |digit| digit = DIGITS[digit] }.compact
                
  integer = 0
  
  digit_array.each { |digit| integer = integer * 10 + digit }
  
  integer
end

def string_to_signed_integer(string)
  converted_string = string_to_integer(string)
  string.start_with?('-') ? -converted_string : converted_string
end
  
  
puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100