require 'yaml'
MSGS = YAML.load_file('mort_msg.yml')

loan_amount = ''
apr = ''
loan_duration = ''
mpr = ''

def prompt(message)
  puts "=> #{message}"
end

def valid_float?(number)
  (number.to_f.to_s == number || number.to_i.to_s == number) && !number.empty?
end

loop do
  prompt(MSGS['welcome'])

  prompt(MSGS['what_loan'])
  loop do
    loan_amount = gets.chomp
    if valid_float?(loan_amount)
      loan_amount = loan_amount.to_i
      break
    else
      prompt(MSGS['invalid_num'])
    end
  end

  prompt(MSGS['what_apr'])
  loop do
    apr = gets.chomp
    if valid_float?(apr)
      mpr = (apr.to_f) / 100 / 12
      break
    else
      prompt(MSGS['invalid_num'])
    end
  end

  prompt(MSGS['what_duration'])
  loop do
    loan_duration = gets.chomp
    if valid_float?(loan_duration)
      loan_duration = (loan_duration.to_f) * 12
      break
    else
      prompt(MSGS['invalid_num'])
    end
  end

  monthly_payment = loan_amount * (mpr / (1 - (1 + mpr)**(-(loan_duration))))

  prompt("Thank you for the info! Your monthly payment is $#{monthly_payment}!")

  prompt(MSGS["use_again"])
  
  answer = gets.chomp       # clarity over terseness 
  
  break unless answer.upcase.start_with?("Y")
end

prompt(MSGS["thank_you"])
prompt(MSGS["bye"])

# rubocopped
