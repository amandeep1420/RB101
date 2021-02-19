#*REDO THIS ONE: USE SPACESHIP OPERATOR AND HELPER METHOD SETUP*

=begin

P
  - write a method that takes an integer and converts it to a string representation
  - note: no conversion methods may be used
  - note: must account for signs now
  - note: same rules as last prob
E
  - see book
D
  - irrelevant
A
  - going to add a condition to add sign during loop and go to next iteration after adding
    - no no no, must do before loop
C
=end

def signed_integer_to_string(orig_int)
  ref = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
  string = ''
  int = orig_int.clone
  int *= -1 if int < 0
  loop do
    int, current_num = int.divmod(10)
    string.prepend(ref[current_num])
    break if int == 0
  end
  if orig_int < 0
    "-" + string
  elsif orig_int == 0
    string
  else
    '+' + string
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

# spaceship operator would've been great here
# we should've used our original method as a helper method
