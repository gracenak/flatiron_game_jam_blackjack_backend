class Api::V1::PlayersController < ApplicationController

    def index
        player = Player.all
        render json: player
    end

    def show
        player = Player.find_by(id: params[:id])
        render json: player
    end

    def create
        player = Player.create(player_params)
        render json: player
    end

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

    private

    def player_params
        params.require(:players).permit(
            :hand,
            :hand_value
        )
    end
end