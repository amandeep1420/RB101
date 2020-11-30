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

def grand_winner?(p_wins, c_wins)
  if p_wins == WINS_FOR_GRAND_WINNER
    pause
    puts "You're the grand winner!"
  elsif c_wins == WINS_FOR_GRAND_WINNER
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
end

def current_score(name, p_wins, c_wins)
  puts "The current score is...\n#{name}: #{p_wins}\nComputer: #{c_wins}"
  pause
  puts "I wonder who will be the grand winner?"
  2.times { pause }
end

def return_gameval_from_abb(player)
  RPS["abb_gamevals"][player]
end

def invalid_name(name)
  name.empty? || name.length < 2
end

def valid_choice?(player)
  RPS['gamevals'].key?(player) || RPS['abb_gamevals'].key?(player)
end

WINS_FOR_GRAND_WINNER = 5
ABB_EXPLAIN = <<-MSG
r = rock
   p = paper
   s = scissors
   l = lizard
   v = spock (hello, fellow vulcan!)
MSG

p_wins = 0
c_wins = 0
name = ''
play_counter = 0

# program begins!

prompt(RPS['welcome'])

loop do
  pause
  prompt(RPS['your_name'])
  name = gets.chomp
  if invalid_name(name)
    prompt(RPS["wrong_name"])
  else
    break
  end
end

prompt(RPS['thanks_name'] + name + "!")

pause

loop do
  reset_view if play_counter > 0
  pause if play_counter > 0
  current_score(name, p_wins, c_wins) if play_counter > 0

  player = ''
  loop do
    prompt("Choose one: #{RPS['gamevals'].keys.join(', ')} - or...")
    pause
    prompt("...type #{RPS['abb_gamevals'].keys.join(', ')}. Guide below!")
    2.times { pause }
    prompt(ABB_EXPLAIN)
    player = gets.downcase.chomp

    if valid_choice?(player)
      break
    else
      prompt(RPS['invalid_choice'])
      pause
    end
  end

  if player.length == 1
    player = return_gameval_from_abb(player)
  end

  computer = RPS["gamevals"].keys.sample

  puts "You chose #{player}..."
  pause
  puts "...Computer chose: #{computer}!"
  pause

  display_results(player, computer)

  if win?(player, computer)
    p_wins += 1
  elsif win?(computer, player)
    c_wins += 1
  end

  grand_winner?(p_wins, c_wins)

  play_counter += 1

  2.times { pause }

  prompt(RPS['again'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

pause

prompt("No problem, #{name}!")

pause

prompt(RPS['bye'])

2.times { pause }