VALID_CHOICES = ['rock', 'paper', 'scissors']

def display_results(player, computer)
  if player == 'rock' && computer == 'scissors' ||
      (player == 'paper' && computer == 'rock') ||
      (player == 'scissors' && computer == 'paper')
    prompt("You won!")
  elsif (player == 'rock' && computer == 'paper') ||
          (player == 'paper' && computer == 'scissors') ||
          (player == 'scissors' && computer == 'rock')
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def prompt(message)
  puts "=> #{message}"
end

loop do
  player = ''
  loop do
    prompt("Choose one: #{RPS["gamevals"].keys.join(', ')}")
    player = gets.chomp
    
    if RPS["gamevals"].keys.include?(player)
      break
    else
      prompt("That's not a valid player.")
    end
  end
  
  computer = RPS["gamevals"].keys.sample
  
  puts "You chose #{player}; Computer chose: #{computer}!"
  
  display_results(player, computer)
  
  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good bye!")
