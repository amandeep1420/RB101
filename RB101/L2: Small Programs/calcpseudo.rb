=begin

- skipping PEDAC as prompt is straightforward, 
no edge cases specified in prompt, data/formulas outlined

pseudo-code:

Greet user

Ask for loan amount in dollars.cents
  - save to variable "loan_amount"

Ask for Annual Percentage Rate (APR), specify no need to convert to decimal form
  - divide by 100 to get percentage value, 
    divide by 12 to get monthly rate, 
    save to variable "monthly_interest"
  
Ask for loan duration in years
  - multiply by 12 to get months, save to variable "loan_months"
  
payment = loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**(-(loan_months))))
  
Print "your monthly payment is #{payment}!"

///

formal pseudo-code

START

PRINT greeting to user

PRINT "What's your loan amount in XXX.XX format? Ex.: 175.23"

LOOP
  GET/SET loan_amount
    IF loan_amount is empty or loan_amount is negative
      PRINT "Please enter a valid amount"
    ELSE
      break

PRINT "What's your Annual Percentage Rate (APR)? Ex.: 5, 10, 12.3, 12.5"

LOOP
  GET/SET annual_interest
    IF annual_interest is empty or less than 1 (per book)
      PRINT "Please enter a valid amount"
    ELSE
      break

GET, SET monthly_interest = (user input).to_f / 1200

PRINT "How many years is the duration of your loan? 
       Don't worry, we'll ask for leftover months in a moment."

....I'm still unsure as to how to formally pseudo-code properly...

loan_years = gets.chomp.to_i
loan_months = loan_years * 12

PRINT "Any leftover months?"

loan_months = loan_months + gets.chomp.to_i

payment = loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**(-(months))))

PRINT "your monthly payment is #{payment}!"

- they want us to validate the inputs
- they want us to use  def prompt(message)
                         puts "=> #{message}"
                       end
  for all prompts
- they want it to loop for additional usages
=end