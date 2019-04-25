class Deck < ApplicationRecord
  has_many :cards

  def build_deck
    @suits = ['♣', '♥', '♠', '♦']
    @ranks = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
    @cards = []

    #Iterating over each suit and rank to create all the cards
    @suits.each do |suit|
      @ranks.each do |rank|
        @cards << Card.create(rank: rank, suit:suit, deck_id: self.id)
      end
    end

    # Method on Arrays that shuffles elements in self in place
    @cards.shuffle!
  end

  def deal(number)
    number.times {@cards.shift}
  end

end
