class CardSerializer < ActiveModel::Serializer
  attributes :id, :value, :suit, :player_id, :face_value

  belongs_to :player
end
