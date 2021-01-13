=begin

Logic (high-level)

1. Display the initial empty 3x3 board
2. Ask the user to mark a square.
3. Computer marks a square.
4. Display the updated board state.
5. If winner, display winner.
6. If board is full, display tie.
7. If neither winner nor board is full, go to #2.
8. Play again?
9. If yes, go to #1
10. Good bye!

=end

require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINS_TO_CLEAR_GAME = 5
WHO_GOES_FIRST = 'choose'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +   # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +   # columns
                [[1, 5, 9], [3, 5, 7]]                # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system("clear")
  puts "You're #{PLAYER_MARKER}; Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, punc = ', ', word='or')
  case arr.size
  when 1 then "#{arr[0]}"
  when 2 then "#{arr[0]} #{last_joiner} #{arr[1]}"
  else
    arr[-1] = "#{word} #{arr[-1]}"
    arr.join(punc)
  end
end

def place_piece!(brd, player)
  player == 'Player' ? player_places_piece!(brd) : computer_places_piece!(brd)
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt("Choose a position to play a piece: #{joinor(empty_squares(brd))}")
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt("Sorry, that's not a valid choice.")
  end
  brd[square] = PLAYER_MARKER
end

def find_a_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k,v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  else
    nil
  end
end

def computer_places_piece!(brd)
  square = nil
  
  WINNING_LINES.each do |line|
    square = find_a_square(line, brd, COMPUTER_MARKER)  # attack
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = find_a_square(line, brd, PLAYER_MARKER)  # defend
      break if square
    end
  end
  
  if !square
    square = 5 if empty_squares(brd).include?(5)        # choose 5
  end
  
  if !square
    square = empty_squares(brd).sample                  # choose random
  end  

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)  # return explicit boolean instead of incidental
end                     # per convention

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def pause
  sleep(2)
end

def round_summary(brd)
  if someone_won?(brd)
    prompt("#{detect_winner(brd)} won the round!")
  else
    prompt("It's a tie!")
  end
end

def grand_winner?(player, computer)
  (player == WINS_TO_CLEAR_GAME) || (computer == WINS_TO_CLEAR_GAME)
end

def next_round_announcement(round_count)
  if round_count > 1
    prompt("Round #{round_count} - let's go!") if round_count > 1
    pause
  end
end

def overall_winner(player, computer)
  player == WINS_TO_CLEAR_GAME ? 'Player' : 'Computer'
end

def decide_first_turn(input)
  case input
  when 'player' then 'Player'
  when 'computer' then 'Computer'
  when 'choose'
    prompt("Who will go first? (choices: player, computer)")
    loop do
      choice = gets.chomp
      if choice.downcase == 'player'
        return 'Player'
      elsif choice.downcase == 'computer'
        return 'computer'
      else
        prompt("That's not a valid choice. Please choose again.")
      end
    end
  end
end

def place_piece!(brd, player)
  player == 'Player' ? player_places_piece!(brd) : computer_places_piece!(brd)
end

def alternate_player(player)
  player == 'Player' ? 'Computer' : 'Player'
end

# beginning of game execution logic

loop do
  player_wins = 0
  computer_wins = 0
  round_count = 1
  
  turn_choice = WHO_GOES_FIRST
  first_player = decide_first_turn(turn_choice)
  current_player = first_player
  
  loop do
    board = initialize_board
    next_round_announcement(round_count)
    current_player = first_player
    
    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end
  
    display_board(board)
    
    round_summary(board)
    
    case detect_winner(board)
    when 'Player' then player_wins += 1
    when 'Computer' then computer_wins += 1
    end
  
    round_count += 1
    break if grand_winner?(player_wins, computer_wins)
  end
  
  victor = overall_winner(player_wins, computer_wins)
  
  prompt("#{victor} won the game!")

  prompt("Play again? (y or n)")
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt("Thanks for playing Tic Tac Toe! Good bye!")
