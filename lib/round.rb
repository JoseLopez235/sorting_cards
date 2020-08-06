require_relative "guess.rb"

class Round
  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def deck
    @deck
  end

  def current_card
    @deck.cards[0]
  end

  def guesses
    @guesses
  end

  def record_guess(hash)
    value = hash[:value]
    suit = hash[:suit]
    guess = "#{value} of #{suit}"
    new_guess = Guess.new(guess, current_card)
    @guesses << new_guess
    @deck.cards.delete(current_card)
    return new_guess
  end
end
