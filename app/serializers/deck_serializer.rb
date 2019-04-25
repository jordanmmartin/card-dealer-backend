class DeckSerializer < ActiveModel::Serializer
  attributes :id, :remaining
  has_many :cards
  def remaining
    object.cards.count
  end
end
