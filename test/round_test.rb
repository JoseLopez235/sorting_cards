require "minitest/autorun"
require "minitest/pride"
require_relative '../lib/round.rb'
require_relative '../lib/deck.rb'
require_relative '../lib/card.rb'
require_relative '../lib/guess.rb'


class RoundTest < Minitest::Test

  def test_should_exsit
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4","Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_instance_of Round, round
  end

  def test_should_return_deck
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4","Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_equal round.deck, deck
  end

end
