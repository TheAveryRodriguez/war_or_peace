require 'rspec'
require './lib/card'  
require './lib/deck' 

# Create cards
card1 = Card.new(:diamond, 'Queen', 12)
card2 = Card.new(:spade, '3', 3)
card3 = Card.new(:heart, 'Ace', 14)

# Create deck
cards = [card1, card2, card3]
deck = Deck.new(cards)

# Test cases
puts "Cards: #{deck.cards}"
puts "Rank of card at index 0: #{deck.rank_of_card_at(0)}"
puts "Rank of card at index 2: #{deck.rank_of_card_at(2)}"
puts "Cards after rank_of_card_at: #{deck.cards}"
puts "High ranking cards: #{deck.high_ranking_cards}"
puts "Percentage of high ranking cards: #{deck.percent_high_ranking}%"

puts "Removing top card..."
removed_card = deck.remove_card
puts "Removed card: #{removed_card}"
puts "Cards after removal: #{deck.cards}"
puts "High ranking cards after removal: #{deck.high_ranking_cards}"
puts "Percentage of high ranking cards after removal: #{deck.percent_high_ranking}%"

card4 = Card.new(:club, '5', 5)
puts "Adding a new card: #{card4}"
deck.add_card(card4)
puts "Cards after adding a new card: #{deck.cards}"
puts "High ranking cards after addition: #{deck.high_ranking_cards}"
puts "Percentage of high ranking cards after addition: #{deck.percent_high_ranking}%"
