require "rspec"
require "hand"
require "card"

describe Hand do

    subject(:hand) { Hand.new("tom",[Card.new(2, :hearts),Card.new(3, :hearts),
      Card.new(4, :hearts),Card.new(5, :hearts),Card.new(6, :hearts)]) }

    let(:pair_hand) { Hand.new("tom",[Card.new(2, :hearts),Card.new(2, :hearts),
      Card.new(9, :hearts),Card.new(5, :hearts),Card.new(6, :hearts)]) }

    let(:three_of_a_kind) { Hand.new("tom",[Card.new(2, :hearts),Card.new(2, :hearts),
      Card.new(2, :hearts),Card.new(5, :hearts),Card.new(6, :hearts)]) }

    let(:four_of_a_kind) { Hand.new("tom",[Card.new(2, :hearts),Card.new(2, :hearts),
      Card.new(2, :hearts),Card.new(2, :hearts),Card.new(6, :hearts)]) }


  describe "#straight?" do
    it "returns true if entire hand contains consecutive numbers" do
      expect(hand.straight?).to be(true)
    end
  end

  describe "#straight_flush?" do
    it "reutrn true if hand is both a straight and flush" do
      expect(hand.straight_flush?).to be(true)
    end
  end

  describe "#flush?" do
    it "return true if all cards are of one suit" do
      expect(hand.flush?).to be(true)
    end
  end

  describe "#pairs?" do
    it "returns true if two cards have the same number" do
      expect(pair_hand.pairs?).to be(true)
    end
  end

  describe "#three_of_a_kind" do
    it "returns true if three cards have the same number" do
      expect(three_of_a_kind.three_of_a_kind?).to be(true)
    end
  end

  describe "#four_of_a_kind" do
    it "returns true if four cards have the same number" do
      expect(four_of_a_kind.four_of_a_kind?).to be(true)
    end
  end
end
