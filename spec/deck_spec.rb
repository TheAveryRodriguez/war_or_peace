require 'rspec'
require './lib/card.rb'
require './lib/deck.rb' 

# Create cards
card1 = Card.new(:diamond, 'Queen', 12)
card2 = Card.new(:spade, '3', 3)
card3 = Card.new(:heart, 'Ace', 14)

# Create deck
cards = [card1, card2, card3]
deck = Deck.new(cards)

# Tests
#removed_card = deck.remove_card
#card4 = Card.new(:club, '5', 5)
#deck.add_card(card4)
