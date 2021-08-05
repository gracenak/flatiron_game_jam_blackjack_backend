class Player < ApplicationRecord
    
    def playerTurn?(player)
        if player.hand_value > 21 || #player stands
            return false
        else
            return true
        end
    end

    def playerLost?(player)
        if player.hand_value > 21 || dealer.hand_value > player.hand_value
            return false
        else
            return true
        end
    end
end
