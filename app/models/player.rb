class Player < ApplicationRecord
    
    def turn
        player = Player.find_by(id: params[:id])
        playerturn = true

        #if player.draws
            #player.get_card
            #player.hand_value += card_value
        #end

        if player.hand_value > 21 || #player stands
            playerturn = false
        end

        if playerturn == true
            player.turn #calls method again
        end
    end
end
