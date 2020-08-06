require_relative "guess.rb"

class Round

  attr_reader :number_correct
  def initialize(deck)
    @deck = deck
    @guesses = []
    @number_correct = 0
  end

  def deck
    @deck
  end

  def current_card
    @deck.cards[0]
  end

  def percent_correct
    return ((@number_correct.to_f / @guesses.count) * 100).round(1)
  end

  def guesses
    @guesses
  end

  def record_guess(hash)
    value = hash[:value]
    suit = hash[:suit]
    guess = "#{value} of #{suit}"
    new_guess = Guess.new(guess, current_card)
    @number_correct += 1 if new_guess.correct?
    @guesses << new_guess
    @deck.cards.delete(current_card)
    return new_guess
  end
end
