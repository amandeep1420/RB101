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


def string_to_signed_integer(string)
  
  negative_check = string[0]
  
  string.delete!(string[0]) if string[0] == "-" || string[0] == '+'
  
  digit_array = string.chars.map { |digit| digit = DIGITS[digit] }
                
  integer = 0
  
  digit_array.each { |digit| integer = integer * 10 + digit }
  
  integer *= -1 if negative_check == '-'
  
  integer
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100