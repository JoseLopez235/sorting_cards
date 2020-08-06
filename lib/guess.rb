require 'card.rb'

class Guess
  attr_reader :card, :response
  def initialize(response, card)
    @card = card
    @response = response
  end
end
