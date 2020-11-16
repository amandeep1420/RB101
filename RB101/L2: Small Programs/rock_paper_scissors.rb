VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  puts "=> #{message}"
end

def display_result(player, computer)

player = ''
loop do
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    player = gets.chomp
    
    if VALID_CHOICES.include?(player)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  
  
  computer_choice = VALID_CHOICES.sample
  
  puts("You chose: #{player}; Computer chose: #{computer_choice}")
  
  if (player == 'rock' && computer_choice == 'scissors') || 
     (player == 'paper' && computer_choice == 'rock') ||
     (player == 'scissors' && computer_choice == 'paper') 
    prompt("You won!")
  elsif (player == 'rock' && computer_choice == 'paper') ||
        (player == 'paper' && computer_choice == 'scissors') ||
        (player == 'scissors' && computer_choice == 'rock')
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end 

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end 

prompt("Thank you for playing. Good bye!")

