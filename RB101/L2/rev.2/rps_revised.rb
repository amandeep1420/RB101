require 'yaml'
RPS = YAML.load_file('rps_YAML.yml')

def win?(first, second)
  RPS["gamevals"][first]["win"].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def display_grand_winner(playerscore, computerscore)
  if playerscore == WINS_FOR_GRAND_WINNER
    pause
    puts "You're the grand winner!"
  elsif computerscore == WINS_FOR_GRAND_WINNER
    pause
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
  pause
end

def current_score(name, p_wins, c_wins)
  puts "The current score is...\n#{name}: #{p_wins}\nComputer: #{c_wins}"
  pause
  puts "I wonder who will be the grand winner?"
  pause
  puts "Remember: #{WINS_FOR_GRAND_WINNER} wins takes the title!"
  2.times { pause }
end

def return_gameval_from_abb(player)
  RPS["abb_gamevals"][player]
end

def invalid_name(name)
  name.empty? || name.length < 2 || name.include?(" ")
end

def valid_choice?(player)
  RPS['gamevals'].key?(player) || RPS['abb_gamevals'].key?(player)
end

def grand_winner_info
  prompt("You'll need #{WINS_FOR_GRAND_WINNER} #{RPS['to_become']}")
  2.times { pause }
end

def retrieve_name
  pause
  prompt(RPS['your_name'])
  input = gets.chomp
  if invalid_name(input)
    prompt(RPS["wrong_name"])
    retrieve_name(input)
  else
    input
  end
end

def update_score(scorehash, player, computer)
  if win?(player, computer)
    scorehash[:player] += 1
  elsif win?(computer, player)
    scorehash[:computer] += 1
  end
end

def choice_explanation
  prompt("Choose one: #{RPS['gamevals'].keys.join(', ')} - or...")
  pause
  prompt("...type #{RPS['abb_gamevals'].keys.join(', ')}. Guide below!")
  2.times { pause }
  prompt(ABB_EXPLAIN)
end

def retrieve_choice
  player = gets.downcase.chomp
  if valid_choice?(player)
    player
  else
    prompt(RPS['invalid_choice'])
    pause
    retrieve_choice
  end
end

def display_choices(player, computer)
  puts "You chose #{player}..."
  pause
  puts "...Computer chose: #{computer}!"
  pause
end

def play_again?
  prompt(RPS['again'])
  answer = gets.chomp
  answer.downcase.include?('yes') && answer.length <= 5
end

def closing_statement(name)
  prompt("No problem, #{name}!")
  pause
  prompt(RPS['bye'])
  2.times { pause }
end

WINS_FOR_GRAND_WINNER = 5
ABB_EXPLAIN = <<-MSG
r = rock
   p = paper
   s = scissors
   l = lizard
   v = spock (hello, fellow vulcan!)
MSG

score = { player: 0, computer: 0 }
name = ''
play_counter = 0

# ----------- program begins! -----------

prompt(RPS['welcome'])

name = retrieve_name

prompt(RPS['thanks_name'] + name + "!")

2.times { pause }

loop do
  grand_winner_info if play_counter < 1
  reset_view if play_counter > 0
  current_score(name, score[:player], score[:computer]) if play_counter > 0

  choice_explanation

  player = retrieve_choice

  if player.length == 1
    player = return_gameval_from_abb(player)
  end

  computer = RPS["gamevals"].keys.sample

  display_choices(player, computer)

  display_results(player, computer)

  update_score(score, player, computer)

  display_grand_winner(score[:player], score[:computer])

  play_counter += 1

  2.times { pause }

  break unless play_again?
end

closing_statement(name)
