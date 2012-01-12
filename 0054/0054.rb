#!/usr/bin/env ruby

class Hand

  def initialize cards = []
    @cards = cards.map { |c| Card.new c }
  end
  
  def high_card
    @cards.max_by { |c| c.rank }
  end


  def pair?
    self.grouped_by_rank.values.map(&:size).any? { |s| s == 2 }
  end

  def two_pair?
    self.grouped_by_rank.values.inject(0) { |r,g| r += 1 if g.size == 2; r } == 2
  end

  def three_of_a_kind?
    self.grouped_by_rank.values.map(&:size).any? { |s| s == 3 }
  end

  def four_of_a_kind?
    self.grouped_by_rank.values.map(&:size).any? { |s| s == 4 }
  end


  def grouped_by_rank
    @group ||= @cards.group_by { |c| c.rank }
  end


end



class Card

  FACE_VALUES = {
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9,
    'T' => 10,
    'J' => 11,
    'Q' => 12,
    'K' => 13,
    'A' => 14
  }

  SUIT_VALUES = {
    'H' => 'Hearts',
    'D' => 'Diamonds',
    'C' => 'Clovers',
    'S' => 'Spades'
  }


  def initialize card
    @rank = card[0,1]
    @suit = card[1,1]
  end

  def rank
    FACE_VALUES[@rank]
  end
  
  def suit
    SUIT_VALUES[@suit]
  end

end

hand = Hand.new( %w(5H 5C 5S 5S 6D) )
p hand.four_of_a_kind?

exit




hands = IO.readlines('poker.txt').map { |l| l.gsub!(/\r\n/, '') }
hands.each do |hand|
  cards = hand.split(' ')
  p1 = Hand.new( cards[0,5] )
end


