require "rspec"
require "deck"


describe Deck do
  subject(:deck) { Deck.new }

  # cards_hash = Hash.new {|h,k| h[k] = []}
  # deck.pile.each do |card|
  #   cards_hash[card.number] << card.suit
  # end

  describe "#initialize" do
    it "initializes a deck with 52 card objects" do
      expect(deck.pile.length).to eq(52)
    end
    # 
    # it "has 4 suits for the number 4" do
    #   expect(card_hash[4]).to eq([:clubs, :spades, :hearts, :diamonds])
    # end
  end

  describe "#remove_card" do
    it "burns a card from the deck" do
      before_burn = deck.pile.length
      deck.remove_card
      after_burn = deck.pile.length

      expect(before_burn).to_not eq(after_burn)
    end
  end
end
