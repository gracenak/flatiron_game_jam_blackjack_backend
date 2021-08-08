class CardSerializer < ActiveModel::Serializer
  attributes :id, :face
  has_one :deck
end
