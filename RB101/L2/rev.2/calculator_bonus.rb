require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

LANGUAGE = 'en'

require 'pry'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
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
         
  x = 'a random line of code'
  
  word
end

prompt('welcome')

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt('valid_name')
  else
    break
  end
end

prompt('username') + "#{name}" + "!"            # book feature broke this part of the program...hmm..

loop do # main loop
  number1 = ''
  loop do
    prompt('first_number')
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt('invalid_number')
    end
  end

  number2 = ''
  loop do
    prompt('second_number')
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt('invalid_number')
    end
  end

  operator_prompt = <<-MSG
 What operation would you like to perform?
    1) Add
    2) Subtract
    3) Multiply
    4) Divide
  MSG
  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('must_choose')
    end
  end

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end
  
  prompt("#{operation_to_message(operator)} the two numbers...")

  prompt("The result is #{result}!")

  prompt('another_calculation')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('thank_you')