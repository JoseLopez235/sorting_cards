require 'test_helper.rb'
require_relative "../lib/card.rb"
require_relative "../lib/deck.rb"

class DeckTest < Minitest::Test
  def test_it_exists
    card_1 = Card.new("Ace", "Spades")
    card_2 = Card.new("4","Clubs")
    card_3 = Card.new("5","Diamonds")
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    assert_instance_of Deck, deck
  end

  def test_returns_cards_in_deck
    card_1 = Card.new("Ace", "Spades")
    card_2 = Card.new("4","Clubs")
    card_3 = Card.new("5","Diamonds")
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    assert_equal deck.cards, cards
  end

  def test_returns_amount_of_cards_in_deck
    card_1 = Card.new("Ace", "Spades")
    card_2 = Card.new("4","Clubs")
    card_3 = Card.new("5","Diamonds")
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    assert_equal deck.count, 3
  end

end
