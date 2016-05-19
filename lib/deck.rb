require_relative "card"

SUITS = [:spades, :spades, :diamonds, :hearts]
NUMBERS = [2,3,4,5,6,7,8,9,10,11,12,13,14]

class Deck
  attr_accessor :pile
  def initialize
    @pile = []
    generate_deck
  end

  def remove_card
    @pile.pop
  end

  def generate_deck
    SUITS.each do |suit|
      NUMBERS.each do |number|
        @pile << Card.new(number, suit)
      end
    end
  end
end
