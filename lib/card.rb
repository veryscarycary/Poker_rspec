class Card
  attr_reader :number, :suit

  def initialize(number, suit)
    raise unless number.is_a?(Fixnum) && suit.is_a?(Symbol)
    @number = number
    @suit = suit
  end

end
