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

    assert_equal deck, round.deck
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

    new_guess = round.record_guess({value: "3", suit: "Hearts"})
    assert_equal [new_guess], round.guesses
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

  def test_should_return_number_of_correct_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4","Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_equal round.number_correct, 0
    round.record_guess({value: "3", suit: "Hearts"})

    assert_equal 1, round.number_correct
  end

  def test_should_return_a_percentage_of_right_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4","Clubs")
    card_3 = Card.new("5","Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    round.record_guess({value: "3", suit: "Hearts"})

    assert_equal 50, round.percent_correct

    round.record_guess({value: "3", suit: "Hearts"})
    assert_equal 33.3, round.percent_correct
  end

end
