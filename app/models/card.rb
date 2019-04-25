class Card < ApplicationRecord
  belongs_to :deck
  # attr_accessor :rank, :suit, :deck_id

  # def initialize(rank, suit)
  #   @rank = rank
  #   @suit = suit
  # end

end
