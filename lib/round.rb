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
end
