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

    def end_game
        check = nil
        if playerWon?
            check = true
        else
            check = false
        end
            render json: check

    end


    private

    def player_params
        params.require(:players).permit(
            :hand,
            :hand_value
        )
    end
end