class Deck < ApplicationRecord
  has_many :cards

  def build_deck
    @suits = ['clubs', 'hearts', 'spades', 'diamonds']
    @ranks = [*(2..10), 'J', 'Q', 'K', 'A']
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
