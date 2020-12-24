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

# couldn't figure it out - looked at solution....
# ....nothing fancy; they literally just moved each digit over using multiplication-by-10 to achieve the desired result
# well, why don't we try it now? I didn't memorize it or anything, and reverse-engineering is better than nothing

def string_to_integer(string)
  
  digit_array = string.chars.map do |digit|
                  digit = DIGITS[digit]
                end
                
  converted_string = 0
  
  digit_array.each do |digit|
    converted_string = converted_string * 10 + digit
  end
  
  converted_string
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570

# we basically got the same solution as the book via reverse engineering after briefly viewing the solution
# we forgot to create a key-value pair for zero, though, which tripped us up for several minutes

# hm.
# didn't do the further exploration because I'm grouched.