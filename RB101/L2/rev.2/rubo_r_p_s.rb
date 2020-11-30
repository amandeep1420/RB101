VALID_CHOICES = %w(rock paper scissors)

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def win?(first, second)
  first == 'rock' && second == 'scissors' ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def grand_winner?(player_wins, computer_wins)
  if player_wins == 5
    puts "You're the grand winner!"
  elsif computer_wins == 5
    puts "The computer is the grand winner!"
  end
end

def prompt(message)
  puts "=> #{message}"
end

p_count = 0
c_count = 0
  
loop do 
  player = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    player = gets.chomp

    if VALID_CHOICES.include?(player)
      break
    else
      prompt("That's not a choice.")
    end
  end

  computer = VALID_CHOICES.sample

  puts "You chose #{player}; Computer chose: #{computer}!"

  display_results(player, computer)
  
  if win?(player, computer)
    p_count += 1
  elsif win?(computer, player)
    c_count += 1
  end
  
  grand_winner?(p_count, c_count)

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good bye!")
