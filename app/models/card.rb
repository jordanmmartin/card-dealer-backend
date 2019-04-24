class Card < ApplicationRecord
  belongs_to :deck
  attr_accessor :suit, :rank
end
