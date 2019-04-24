class Card < ApplicationRecord
  belongs_to :deck
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
  
end
