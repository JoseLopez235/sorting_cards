require 'test_helper.rb'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/card.rb'
require_relative '../lib/guess.rb'

class GuessTest < Minitest::Test
  def test_it_exists
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_instance_of Guess, guess
  end

  def test_if_reponse_returns
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_equal "10 of Hearts", guess.response
  end

  def test_if_card_returns
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_equal card, guess.card
  end

  def test_if_it_is_correct
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    # require 'pry'; binding.pry
    guess.card
    guess.response

    assert_equal true, guess.correct?

    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)

    guess.card
    guess.response

    assert_equal false, guess.correct?
  end
end
