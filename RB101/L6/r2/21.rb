require 'yaml'
require 'io/console'

TXT = YAML.load_file('21.yml')
FACES = %w(Ace Jack Queen King)
CARDS = (2..10).map(&:to_s).concat(FACES).freeze
SUITS = %w(Hearts Diamonds Clubs Spades)
MAX_TOTAL = 21
MIN_DEALER_TOTAL = 17
POINTS_FOR_GRAND_WIN = 5

def prompt(text)
  puts ">> #{text}"
end

def clear_screen
  system 'clear'
end

def any_key_continue
  print "Press ANY KEY to continue."
  STDIN.getch
  print "\n"
  system("clear")
end

def summary(scores)
  if !scores.values.all?(0)
    prompt TXT['next_round']
    scores.each { |player, score| puts "#{player.capitalize}: #{score}" }
    prompt TXT['dealing']
  else
    prompt "#{TXT['welcome']} #{TXT['dealing']}"
  end
  any_key_continue
end

def build_a_deck
  SUITS.each_with_object({}) { |suit, hash| hash[suit] = CARDS.dup }
end

def initial_hands(hands, deck)
  deal(hands[:player], deck, 2)
  deal(hands[:dealer], deck, 2)
end

def deal(hand, deck, n=1)
  n.times do
    suit = deck.keys.sample
    value = deck[suit].sample
    hand << "#{value} of #{suit}"
    deck[suit].delete(value)
  end
end

def initial_totals(hands, totals)
  totals[:player] = total(hands[:player])
  totals[:dealer] = total(hands[:player])
end

def total(hand)
  values = hand.map { |card| card.split(' ').first }
  aces, values = values.partition { |value| value == 'Ace' }

  num_total = values.map { |val| FACES.include?(val) ? 10 : val.to_i }.sum

  aces.size.times do
    num_total += (num_total < 11 ? 11 : 1)
  end

  num_total
end

def summary_of_initial_deal(hands, revealed_card)
  prompt(TXT['player_cards'])
  puts hands[:player]

  prompt(TXT['revealed_card'])
  puts revealed_card

  prompt TXT['player_turn']
end

def score_reminder(totals)
  prompt "#{TXT['player_total']} #{totals[:player]}!"
end

def player_stayed?
  loop do
    prompt TXT['choice']
    choice = gets.chomp.downcase.delete("^a-z")
    if choice.start_with?('s')
      return true
    elsif choice.start_with?('h')
      return false
    else
      prompt TXT['invalid']
    end
  end
end

def busted?(total)
  total > MAX_TOTAL
end

def bust_announcement(hands)
  prompt TXT['player_busted']
  puts hands[:player]
end

def dealer_turn
  prompt TXT['dealer_turn']
  any_key_continue
end

def outcome_calculation(totals)
  return 'player_busted' if busted?(totals[:player])
  return 'dealer_busted' if busted?(totals[:dealer])

  if totals[:player] > totals[:dealer]
    'player_won'
  elsif totals[:dealer] > totals[:player]
    'dealer_won'
  else
    'tie'
  end
end

def reveal_outcome(hands, totals, outcome)
  prompt TXT['end_hand_player']
  puts hands[:player]

  prompt TXT['end_hand_dealer']
  puts hands[:dealer]

  any_key_continue

  prompt "#{TXT[outcome]} Your hand total was #{totals[:player]}. "\
  "The Dealer's hand total was #{totals[:dealer]}.\n"
end

def increment_points(scores, outcome)
  if outcome == 'tie'
    nil
  elsif outcome == 'dealer_busted' || outcome == 'player_won'
    scores[:player] += 1
  else
    scores[:dealer] += 1
  end
end

def find_grand_winner(scores)
  return 'player' if scores[:player] == POINTS_FOR_GRAND_WIN
  return 'dealer' if scores[:dealer] == POINTS_FOR_GRAND_WIN
  nil
end

def another_round?
  prompt TXT['again']
  gets.chomp.downcase.delete("^a-z").start_with?('y')
end

def announce_grand_winner(grand_winner)
  case grand_winner
  when 'player' then prompt TXT['player_grand']
  when 'dealer' then prompt TXT['dealer_grand']
  end
end

def thank_you
  prompt TXT['thanks']
end

# end of methods

scores = { player: 0, dealer: 0 }
grand_winner = nil

loop do
  deck = build_a_deck
  hands = { player: [], dealer: [] }
  totals = { player: 0, dealer: 0 }

  clear_screen
  summary(scores)

  initial_hands(hands, deck)
  initial_totals(hands, totals)
  revealed_card = hands[:dealer].sample
  summary_of_initial_deal(hands, revealed_card)

  loop do
    score_reminder(totals)
    break if player_stayed?
    deal(hands[:player], deck)
    totals[:player] = total(hands[:player])
    break if totals[:player] > MAX_TOTAL
  end

  if busted?(totals[:player])
    bust_announcement(hands)
    scores[:dealer] += 1
    grand_winner = find_grand_winner(scores)
    break if grand_winner
    another_round? ? next : break
  end

  dealer_turn
  until totals[:dealer] >= MIN_DEALER_TOTAL
    deal(hands[:dealer], deck)
    totals[:dealer] = total(hands[:dealer])
  end

  outcome = outcome_calculation(totals)
  reveal_outcome(hands, totals, outcome)
  increment_points(scores, outcome)
  grand_winner = find_grand_winner(scores)

  break if grand_winner || !another_round?
end

announce_grand_winner(grand_winner)
thank_you
