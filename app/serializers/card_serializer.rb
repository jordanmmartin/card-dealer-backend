class CardSerializer < ActiveModel::Serializer
  attributes :rank, :suit, :id
end
