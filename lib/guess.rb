require 'card.rb'

class Guess
  attr_reader :response
  attr_accessor :card
  def initialize(response, card)
    @card = card
    @response = response
  end

  def correct?
    if @response == "#{@card.value} of #{@card.suit}"
      return true
    else
      false
    end
  end
end
