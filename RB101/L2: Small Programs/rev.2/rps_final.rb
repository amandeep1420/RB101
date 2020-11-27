require 'pry'
require 'yaml'

RPS = YAML.load_file('rps_YAML.yml')

def win?(first, second)
  RPS["gamevals"][first]["win"].include?(second)
end

binding.pry

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def grand_winner?(p_count, c_count)
  if p_count == WINS_FOR_GRAND_WINNER
    puts "You're the grand winner!"
  elsif c_count == WINS_FOR_GRAND_WINNER
    puts "The computer is the grand winner!"
  end
end

def prompt(message)
  puts "=> #{message}"
end

def pause
  sleep(0.75)
end

def reset_view
  system("clear")
  system("cls")
end

def current_score(name, p_count, c_count)
  puts "The current score is...\n#{name}: #{p_count}\nComputer: #{c_count}"
  pause
  puts "I wonder who will win?"
  pause
end

VALID_CHOICES = %w( rock paper scissors lizard spock )
VALID_ABBREV = {
  "s" => "scissors",
  "p" => "paper",
  "r" => "rock",
  "l" => "lizard",
  "V" => "spock"
}
WINS_FOR_GRAND_WINNER = 5

p_count = 0
c_count = 0
name = ''
play_counter = 0

prompt(RPS['welcome'])

pause

prompt(RPS['your_name'])
name = gets.chomp

pause

prompt(RPS['thanks_name'])

pause

loop do 
  reset_view if play_counter > 0
  pause if play_counter > 0
  current_score(name, p_count, c_count) if play_counter > 0
  
  player = ''
  loop do
    prompt("Choose one: #{RPS["gamevals"].keys.join(', ')}")
    player = gets.chomp

    if RPS["gamevals"].has_key?(player)
      break
    else
      prompt("That's not a valid choice. Let's try again")
      pause
    end
  end

  computer = RPS["gamevals"].keys.sample

  puts "You chose #{player}..."
  pause
  puts "...Computer chose: #{computer}!"
  pause
  
  display_results(player, computer)

  if win?(player, computer)
    p_count += 1
  elsif win?(computer, player)
    c_count += 1
  end

  grand_winner?(p_count, c_count)

  pause
  
  play_counter += 1

  prompt(RPS['again'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

pause

prompt("No problem, #{name}!")

pause

prompt(RPS['bye'])





# gamevals:  
#   "rock":
#     win: ["scissors", "lizard"]
#   "paper":
#     win: ["rock", "spock"]
#   "scissors":
#     win: ["paper", "lizard"]
#   "spock":
#     win: ["rock", "scissors"]
#   "lizard":
#     win: ["spock", "paper"]

# welcome: "Welcome to my Rock-Paper-Scissors-Lizard-Spock game!"
# your_name: "What's your name?"
# thanks_name: "Thanks - it's nice to meet you!"
# again: "Do you want to play again? Type 'y' if so!"
# bye: "Thank you for playing. Good bye!"