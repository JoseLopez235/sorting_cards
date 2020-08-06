class Round
  def initialize(deck)
    @deck = deck
  end

  def deck
    @deck
  end

  def current_card
    @deck.cards[0]
  end
end
