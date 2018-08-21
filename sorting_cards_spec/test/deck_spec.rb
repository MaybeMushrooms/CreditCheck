require "./lib/card"
require "./lib/guess"
require "./lib/deck"

RSpec.describe Deck do
  
  it "adds and holds cards" do
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    expect(deck.cards).to eq [card_1, card_2, card_3]
    expect(deck.count).to eq 3
  end
end