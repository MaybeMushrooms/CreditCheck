require "pry"
require "./lib/card"
require "./lib/guess"

class Deck
  attr_reader :cards,
              :count 
  def initialize(cards)
    @cards = cards
  end 

  def count
    @cards.count
  end
end
