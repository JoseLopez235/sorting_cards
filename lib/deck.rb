class Deck

  attr_accessor :deck
  def initialize(cards)
    @deck = cards
  end

  def cards
    @deck
  end

  def count
    @deck.count
  end

end
