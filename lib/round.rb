class Round
  def initialize(deck)
    @deck = deck
    @guesses = []
    @correct_guesses = 0
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

  def number_correct
    @correct_guesses
  end
end
