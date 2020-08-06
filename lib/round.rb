class Round

  attr_reader :guesses, :number_correct
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
    return ((@number_correct / @guesses.count) * 100).round(1)
  end
end
