class Deck < ApplicationRecord
  has_many :cards
  belongs_to :deck

  def initialize
    @suits = ['♣', '♥', '♠', '♦']
    @ranks = [*(2..10), 'J', 'Q', 'K', 'A']
    @cards = []

    #Iterating over each suit and rank to create all the cards
    @suits.each do |suit|
      @ranks.each do |rank|
        @cards << Card.new(rank, suit)
      end
    end

    # Method on Arrays that shuffles elements in self in place
    @cards.shuffle!
  end

  def deal(number)
    number.times {@cards.shift}
  end

end
