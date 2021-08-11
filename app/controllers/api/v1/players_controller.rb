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
        binding.pry
        # if playerLost? 
        #     flash.alert = "Player Lost Hand"
        # else
        #     playerWon?
        #     flash.alert = "Player Wins This Hand"
        # end

        flash[:notice] = "Button works REEEEEE"

    end


    private

    def player_params
        params.require(:players).permit(
            :hand,
            :hand_value
        )
    end
end