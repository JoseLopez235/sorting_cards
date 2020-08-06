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


  def test_should_return_first_element_in_the_deck
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4","Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_equal card_1, round.current_card
  end

  def test_it_returns_recorded_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4","Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_equal round.guesses, []
  end

  def test_should_return_instance_of_guess_class
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4","Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    new_guess = round.record_guess({value: "3", suit: "Hearts"})

    assert_instance_of Guess, new_guess
    assert_equal 1, round.deck.count
  end
end
