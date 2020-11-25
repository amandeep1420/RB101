puts "What's your language? Type en or es:"

language = gets.chomp

require 'yaml'

MESSAGES = YAML.load_file('calculator_messages.yml')

puts MESSAGES.inspect

def messages(message, lang='en')
  MESSAGES[lang][message]
end 

def prompt(message)
  puts "=> #{message}"
end

def integer?(num)
  num.to_i.to_s == num
end 

def float?(num)
  num.to_f.to_s == num
end 

def valid_number?(num)
  integer?(num) || float?(num)
end

def operation_to_message(op)
  word = case op
           when '1'
             'Adding'
           when '2'
             'Subtracting'
           when '3'
             'Multiplying'
           when '4'
             'Dividing'
         end
         
  x = 'random line of code'
  
  word
end

prompt messages('welcome', language)

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt messages('valid_name', language)
  else
    break
  end
end

prompt "Hi #{name}!"

loop do # main loop
  number1 = ''
  loop do
    prompt MESSAGES['first_number']
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt MESSAGES['not_valid']
    end
  end

  number2 = ''
  loop do
    prompt MESSAGES['second_number']
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt MESSAGES['not_valid']
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
    MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt MESSAGES['choose']
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}!")

  prompt MESSAGES['again']
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt MESSAGES['bye']

=begin

bonus #1: better integer validation
  - could use the .integer? method, yes?
  - no. strings will convert to zero. I recall a method being written in a prior exercise
    where we convert the string to an integer, convert back, then compare the result to 
    the original to see if there's a loss of information - if it's valid input, 
    the number will simply change object types throughout; if it was a string, it won't check out.
    Let's implement that.
  - it works :)))))))
  - wow, the book solutions are a bit beyond me at the moment; glad they acknowledge that.
  
bonus #2: 
  - initially, I thought swapping in to_f for to_i wouldn't work as the returned value would have 
    a decimal (which would return false when compared to the initial value); however, irb says that
    they're equivalent (so 4 == 4.0). Interesting.
  - wrong. we didn't compare strings when we tested that - we compared integers. strings check every 
    single character for matching when compared, so '1' != '1.0'. ugh.
  - yep, tested and confirmed; decimal input is required at the outset now.
  - used the || solution they presented.

bonus #3:
  - could we use explicit returns for the result of each case statement? depends on the code 
    being added, I suppose.
  - mm, they saved the result to a variable, then made sure the variable was the last line in the method.
  
bonus #4:
  - I have no idea how to go about this. revealing solution.
  - yaml files are wild, wow!
  
bonus #5:
  - 
  
=end  