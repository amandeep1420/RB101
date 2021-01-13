require 'pry'
require 'pry-byebug'
TXT = YAML.load_file('21.yml')

VALUES = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)
SUITS = %w(Hearts Diamonds Clubs Spades)

def prompt(string) # format strings for terminal output to player
  puts "=> #{string}"
end

def pause
  sleep(0.5)
end

def create_deck # create deck for instance of game
  deck = []
  VALUES.each do |val|
    SUITS.each do |suit|
      deck << "#{val} of #{suit}"
    end
  end
  deck
end

def deal(hand, cards, dealt=1) # deal cards w/ optional card # arg
  dealt.times do
    card = cards.sample
    hand << card
    cards.delete(card)
  end
end

def reveal_card(hand) # determine revealed card from dealer hand
  hand.sample
end

def summary_of_initial_hands # informs player as to game state at start
  prompt(TXT['hand'])
  puts player_hand
  prompt(TXT['reveal'])
  puts revealed_card
end

def convert_single_card(any_card) # helper method          
  card_value = any_card.split.first                 
  if card_value.to_i.to_s == card_value
    card_value.to_i
  elsif %w( Jack Queen King ).include?(card_value)
    10
  else
    'Ace'
  end
end

def convert_hand(hand) # helper method                             
  converted_hand = []                               
  hand.each do |card|                               
    card = card.split.first                         
    converted_hand << convert_single_card(card)
  end
  converted_hand
end

def aceless_total(hand) # helper method        
  convert_hand(hand).select { |card| card != 'Ace' }.sum   
end

def total(hand) # calculate hand total for round
  converted_hand = convert_hand(hand)
  running_total = aceless_total(hand)
  
  ace_count = converted_hand.count('Ace')
  if running_total + 11 + (ace_count - 1) <= 21
    running_total += 11 + ace_count - 1
  else
    running_total += ace_count
  end
  
  running_total
end

def valid_decision
  loop do
    decision = gets.chomp
    decision = decision.downcase
    (decision == 'hit' || decision == 'stay') ? (return decision) : nil
    prompt(TXT['invalid'])
  end
end

# begin body of code

loop do
  deck = create_deck
  
  player_hand = []
  dealer_hand = []
  deal(player_hand, deck, 2)                                            
  deal(dealer_hand, deck, 2)
  
  revealed_card = reveal_card(dealer_hand)
  
  prompt(TXT['welcome'])
  pause
  summary_of_initial_hands
  4.times { pause }
  prompt(TXT['decision'])
  
  loop do
    decision = valid_decision
    
