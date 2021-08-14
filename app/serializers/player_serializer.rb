class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :hand_value

  has_many :cards
end
