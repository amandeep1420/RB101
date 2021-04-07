require 'yaml'
require 'io/console'

TXT = YAML.load_file('21.yml')
FACES = %w(Ace Jack Queen King)
CARDS = (2..10).map(&:to_s).concat(FACES).freeze
SUITS = %w(Hearts Diamonds Clubs Spades)
MAX_TOTAL = 21
MIN_DEALER_TOTAL = 17

def prompt(text)
  puts ">> #{text}"
end

def continue_execution
  print "Press ANY KEY to continue."
  STDIN.getch
  print "\n"
  system("clear")
end

def build_a_deck
  SUITS.each_with_object({}) { |suit, hash| hash[suit] = CARDS.dup }
end

def deal(hand, deck, n=1)
  n.times do
    suit = deck.keys.sample
    value = deck[suit].sample
    hand << "#{value} of #{suit}"
    deck[suit].delete(value)
  end
end

def total(hand)
  values = hand.map { |card| card.split(' ').first }
  aces, values = values.partition { |value| value == 'Ace' }

  num_total = values.map do |value|
                FACES.include?(value) ? 10 : value.to_i
              end.sum

  aces.size.times do
    num_total += (num_total < 11 ? 11 : 1)
  end
  
  num_total
end

def summary_of_initial_deal(player_hand, revealed_card)
  prompt(TXT['player_cards'])
  puts player_hand
  
  prompt(TXT['revealed_card'])
  puts revealed_card
end

def player_stayed?
  prompt TXT['choice']
  gets.chomp.downcase.delete("^a-z").start_with?('s')
end

def busted?(total)
  total > MAX_TOTAL
end

def reveal_hands(player_hand, dealer_hand)
  prompt TXT['end_hand_player']
  puts player_hand
  
  prompt TXT['end_hand_dealer']
  puts dealer_hand
  
  continue_execution
end

def announce_round_winner(player_total, dealer_total)
  return (prompt(TXT['player_busted'])) if busted?(player_total)
  return (prompt(TXT['dealer_busted'])) if busted?(dealer_total)
  
  if player_total > dealer_total
    prompt "#{TXT['player_won']} with a total of #{player_total}!"
  elsif dealer_total > player_total
    prompt "#{TXT['dealer_won']} with a total of #{dealer_total}!"
  else
    prompt TXT['tie']
  end
end

def increment_points(player_points, dealer_points)
  if player_points > dealer_points
    player_points += 1
  elsif dealer_points > player_points
    dealer_points += 1
  end
end

def grand_winner_status(player_points, dealer_points)
  return 'player' if player_points == 5
  return 'dealer' if dealer_points == 5
  nil
end

def play_again?
  prompt TXT['again']
  gets.chomp.downcase.start_with?('y')
end

def announce_grand_winner(grand_winner)
  case grand_winner
  when 'player' then prompt TXT['player_grand']
  when 'dealer' then prompt TXT['dealer_grand']
  else nil
  end
end

loop do
  player_points = 0
  dealer_points = 0
  grand_winner = nil
  
  loop do
    deck = build_a_deck
    player_hand = []
    dealer_hand = []
    player_total = 0
    dealer_total = 0
  
    system 'clear'
    prompt TXT['welcome']

    deal(player_hand, deck, 2)
    deal(dealer_hand, deck, 2)
    revealed_card = dealer_hand.sample

    player_total = total(player_hand)
    dealer_total = total(dealer_hand)
    summary_of_initial_deal(player_hand, revealed_card)

    prompt TXT['player_turn']
    
    loop do
      prompt "#{TXT['player_total']} #{player_total}!"
      break if player_stayed?
      
      deal(player_hand, deck)
      player_total = total(player_hand)
      break if player_total > MAX_TOTAL
    end

    if busted?(player_total)
      prompt TXT['player_busted']
      dealer_points += 1

      if dealer_points == 5
        grand_winner = 'dealer'
        break
      end
      
      play_again? ? next : break
    end
    
    prompt TXT['dealer_turn']
    continue_execution
    
    until dealer_total >= MIN_DEALER_TOTAL
      deal(dealer_hand, deck)
      dealer_total = total(dealer_hand)
    end

    reveal_hands(player_hand, dealer_hand)
    announce_round_winner(player_total, dealer_total)
    increment_points(player_points, dealer_points)
    
    grand_winner = grand_winner_status(player_points, dealer_points)
    
    break if grand_winner || !play_again?
  end

  announce_grand_winner(grand_winner)
  prompt TXT['thanks']
  break
end
