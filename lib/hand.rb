RANKING = [:royal_flush,
:straight_flush,
:flush,
:four_of_a_kind,
:full_house,
:straight,
:three_of_a_kind,
:pairs
]

class Hand
  def initialize(player, current_cards)
    @player = player
    @current_cards = current_cards
  end

  def straight?
    straight = true
    @current_cards.each_with_index do |card, idx|
      next if idx == @current_cards.length - 1
      return false unless card.number + 1 == @current_cards[idx + 1].number
    end
    straight
  end

  def flush?
    suit = @current_cards[0].suit
    @current_cards.all? do |card|
      card.suit == suit
    end
  end

  def straight_flush?
    straight? && flush?
  end

  def pairs?
    number_counting.any? {|k, v| v == 2}
  end

  def three_of_a_kind?
    number_counting.any? {|k, v| v == 3}
  end

  def four_of_a_kind?
    number_counting.any? {|k, v| v == 4}
  end

  def number_counting
    of_a_kind_hash = Hash.new(0)

    @current_cards.each do |card|
      of_a_kind_hash[card.number] += 1
    end

    of_a_kind_hash
  end
end
