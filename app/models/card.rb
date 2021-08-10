class Card < ApplicationRecord
  belongs_to :deck
  belongs_to :player

  def deal_card(player)
    new_card = Card.new(value, suit)
    player.hand << new_card
    player.total = player.total += new_card.value
  end
end
