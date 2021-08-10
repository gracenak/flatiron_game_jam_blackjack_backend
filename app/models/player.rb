class Player < ApplicationRecord
    has_many :cards
    belongs_to :deck
    
    def playerTurn?(player)
        if player.hand_value > 21 #|| #player stands
            return false
        else
            return true
        end
    end

    def playerLost?(player)
        if player.hand_value > 21 || dealer.hand_value > player.hand_value || dealer.hand_value == 21
            return true
        else
            return false
        end
    end

    def playerWon?(player)
        if player.hand_value > dealer.hand_value
            return true
        else
            return false
        end
    end

    def playerPush?(player)
        if player.hand_value == dealer.hand_value
            return true
        else
            return false
        end
    end


    def deal_hand(card)
        player.cards << card
        player.total = player.total += card.value.to_i
    end
end
