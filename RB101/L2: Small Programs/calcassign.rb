def prompt(message)
  puts "=> #{message}"
end

loop do
  prompt("Hello! Thank you for using my loan calculator.")

  prompt("What's your loan amount in XXX.XX format? Ex.: 175.23")

  loan_amount = ''

  loop do
    loan_amount = gets.chomp
    if loan_amount.empty? || loan_amount.to_f < 0
      prompt("Please enter a valid amount!")
    else
      break
    end
  end

  loan_amount = loan_amount.to_f

  prompt("What's your Annual Percentage Rate (APR)? Ex.: 5, 10, 12.3, etc.")

  annual_interest = ''

  loop do
    annual_interest = gets.chomp
    if annual_interest.empty? || annual_interest.to_f < 1
      prompt("Please enter a valid amount!")
    else
      break
    end
  end

  monthly_interest = annual_interest.to_f / 1200

  prompt("How many years is the duration of your loan?")
  prompt("Don't worry, we'll ask for leftover months in a moment.")

  years = ''

  loop do
    years = gets.chomp
    if years.empty? || years.to_i < 0
      prompt("Please enter a valid amount!")
    else
      break
    end
  end

  months = years.to_i * 12

  prompt("How many leftover months?")

  leftover = ''

  loop do
    leftover = gets.chomp
    if leftover.empty? || leftover.to_i < 0
      prompt("Please enter a valid amount!")
    else
      break
    end
  end

  leftover = leftover.to_i

  months += leftover

  payment = loan_amount * (monthly_interest / (1 - (1 + months)**(-months)))

  prompt("Your monthly payment is $#{payment}!")

  prompt("Would you like to calculate another payment? Type Y if so.")

  answer = gets.chomp

  break unless answer.downcase == 'y'
end

prompt("Thanks for using this!")
prompt("Bye!")
