require 'pry'
require 'pry-byebug'
TXT = YAML.load_file('21.yml')

VALUES = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)
SUITS = %w(Hearts Diamonds Clubs Spades)

def prompt(string)
  puts "=> #{string}"
end

def pause
  sleep(0.75)
end

def create_deck
  deck = []
  VALUES.each do |val|
    SUITS.each do |suit|
      deck << "#{val} of #{suit}"
    end
  end
  deck
end

def deal_cards(hand, cards, dealt=1)
  dealt.times do
    card = cards.sample
    hand << card
    cards.delete(card)
  end
end

def reveal_card(hand)
  hand.sample
end

# def card_summary(person, hand)
#   summary = "The #{person}'s"
# end

def convert_card(any_card)                          # convert single card
  card_value = any_card.split.first                 # helper method
  if card_value.to_i.to_s == card_value
    card_value.to_i
  elsif %w( Jack Queen King ).include?(card_value)
    10
  else
    'Ace'
  end
end

def convert_hand(hand)                              # converts entire hand
  converted_hand = []                               # aside from aces
  hand.each do |card|                               # into array of values
    card = card.split.first                         # helper method
    converted_hand << convert_card(card)
  end
  converted_hand
end

def aceless_total(hand)                       # gets total aside from aces
  convert_hand(hand).select { |card| card != 'Ace' }.sum    # helper method
end

def total(hand)
  running_total = aceless_total(hand)
  
  ace_count = hand.count('Ace')
  until ace_count == 0
    if running_total + 11 + (ace_count * 1 - 1) <= 21
      running_total += 11 + (ace_count * 1 - 1)
    else
      running_total += ace_count
    end
  end
  
  running_total
end
  



# begin body of code

loop do
  deck = create_deck
  
  player_hand = []
  dealer_hand = []
  deal_cards(player_hand, deck, 2)                                            
  deal_cards(dealer_hand, deck, 2)
  
  revealed_card = reveal_card(dealer_hand)
  
  prompt(TXT['welcome'])
  pause
  loop do
    
    