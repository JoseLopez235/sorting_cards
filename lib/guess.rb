require_relative 'card.rb'

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

  def feedback
    if correct? == true
      "Correct!"
    else
      "Incorrect."
    end  
  end
end
