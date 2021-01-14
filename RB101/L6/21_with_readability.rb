require 'yaml'
TXT = YAML.load_file('21.yml')

VALUES = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)
SUITS = %w(Hearts Diamonds Clubs Spades)
HIT = %w(hit h)
STAY = %w(stay s)
YES = %w(yes y)
READABILITY_ADJUSTMENT = true

def prompt(string) # format strings for terminal output to player
  puts "=> #{string}"
end

def pause(multiplier=1) # pauses during code execution for readability..
  multiplier.times { sleep(0.5) } if READABILITY_ADJUSTMENT
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

def deal(hand, cards, dealt=1) # deal cards w/ optional card quantity argument
  dealt.times do
    card = cards.sample
    hand << card
    cards.delete(card)
  end
end

def reveal_card(hand) # determine revealed card from a hand
  hand.sample
end

def display_summary_of_initial_hands(player, free_card) # displays game state
  prompt(TXT['intro_hand'])                             # after first dealing
  puts player
  prompt(TXT['intro_total'])
  puts total(player)
  prompt(TXT['reveal'])
  puts free_card
end

def abbrev_single_card(any_card) # helper method - abbrevs card for processing
  card_value = any_card.split.first
  if card_value.to_i.to_s == card_value
    card_value.to_i
  elsif %w(Jack Queen King).include?(card_value)
    10
  else
    'Ace'
  end
end

def abbrev_hand(hand) # helper method - abbrevs hand for processing
  abbreved_hand = []
  hand.each do |card|
    card = card.split.first
    abbreved_hand << abbrev_single_card(card)
  end
  abbreved_hand
end

def aceless_total(hand) # helper method - gets hand total w/o aces
  abbrev_hand(hand).select { |card| card != 'Ace' }.sum
end

def add_aces(hand, ace_quantity) # helper method - adds aces to hand if present
  if ace_quantity == 0           # and adjusts values depending on ace quantity
    hand
  elsif hand + 11 + (ace_quantity - 1) <= 21
    hand + 11 + ace_quantity - 1
  else
    hand + ace_quantity
  end
end

def total(hand) # cumulative method - calculate hand total, aces included
  abbreved_hand = abbrev_hand(hand)
  running_total = aceless_total(hand)

  ace_count = abbreved_hand.count('Ace')
  running_total = add_aces(running_total, ace_count)

  running_total
end

def valid_decision # gets valid hit/stay decision from player
  loop do
    decision = gets.chomp
    decision = decision.downcase[/[a-z]+/] # in case user included quotes...
    return decision if (HIT + STAY).include?(decision)
    prompt(TXT['invalid'])
  end
end

def hit?(decision) # returns true if player chose to hit
  HIT.include?(decision)
end

def player_round_summary(hand, hit) # displays hand info after hit/stay
  if hit
    prompt(TXT['hit_card'] + hand.last + ".")
    prompt(TXT['total'] + total(hand).to_s + ".")
  else
    prompt(TXT['stay'])
  end
end

def dealer_round_summary(hand) # displays dealer's hand info after dealer turn
  prompt(TXT['dealer_hand'])
  puts hand
  prompt(TXT['intro_total'])
  puts total(hand)
end

def bust?(total) # returns true if argument value is greater than 21
  total > 21
end

def display_who_busted(player, dealer) # displays results based on who busted
  if player
    prompt(TXT['you_busted'])
  elsif dealer
    prompt(TXT['dealer_busted'])
  end
end

def return_winner(player_total, dealer_total) # returns keyword repping winner
  if player_total > dealer_total
    'player'
  elsif dealer_total > player_total
    'dealer'
  else
    'tie'
  end
end

def display_winner(keyword) # displays winner based on keyword from variable
  case keyword
  when 'player' then prompt(TXT['player_win'])
  when 'dealer' then prompt(TXT['dealer_win'])
  when 'tie' then prompt(TXT['tie'])
  else prompt(TXT['broken'])
  end
end

def display_outcome(player_busted, dealer_busted, player_total, dealer_total)
  if player_busted || dealer_busted
    display_who_busted(player_busted, dealer_busted)
  else
    result = return_winner(player_total, dealer_total)
    display_winner(result)
  end
end

# begin game execution

loop do # outer loop - set gameplay variables, display outcome, etc.
  system("clear")
  deck = create_deck

  player_hand = []
  dealer_hand = []
  player_total = 0
  dealer_total = 0
  player_busted = false
  dealer_busted = false

  loop do # inner gameplay loop for player + dealer
    deal(player_hand, deck, 2)
    deal(dealer_hand, deck, 2)
    revealed_card = reveal_card(dealer_hand)

    prompt(TXT['welcome'])
    pause(2)
    display_summary_of_initial_hands(player_hand, revealed_card)

    loop do # innermost loop for player turn specifically
      prompt(TXT['decision'])
      decision = valid_decision
      deal(player_hand, deck) if hit?(decision)
      player_total = total(player_hand)
      player_round_summary(player_hand, hit?(decision))
      player_busted = bust?(player_total)
      break if STAY.include?(decision) || player_busted
    end

    break if player_busted

    pause(2)
    system("clear") if READABILITY_ADJUSTMENT
    prompt(TXT['dealer_turn'])
    pause(2)
    deal(dealer_hand, deck) until total(dealer_hand) >= 17
    dealer_total = total(dealer_hand)
    dealer_round_summary(dealer_hand)
    dealer_busted = bust?(dealer_total)
    pause(2)
    break
  end

  display_outcome(player_busted, dealer_busted, player_total, dealer_total)

  prompt(TXT['again'])
  answer = gets.chomp
  break unless YES.include?(answer.downcase)
end

prompt(TXT['thanks'])
