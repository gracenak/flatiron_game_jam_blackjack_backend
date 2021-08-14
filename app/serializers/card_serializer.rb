class CardSerializer < ActiveModel::Serializer
  attributes :id, :value, :suit, :player_id

  belongs_to :player
end
