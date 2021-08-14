class Player < ApplicationRecord
    has_many :cards
    
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

    def determine_ace_value(player)
        if player.hand_value <= 10
            return 11
        else 
            return 1
        end
    end


    def deal_and_update_hand(card)
        self.cards << card
        self.hand_value += card.value.to_i
        self.save
    end

end
