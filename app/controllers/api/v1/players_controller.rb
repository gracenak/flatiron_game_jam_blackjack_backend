class Api::V1::PlayersController < ApplicationController

    def index
        binding.pry
        player = "Dude"
        render json: player
    end

    def show
        binding.pry
        player = Player.find_by(id: params[:id])
        render json: player
    end

    def create
        # params["_json"][0]["cards"][0]["code"] for code
        # params["_json"][0]["cards"][0]["value"] for value
        # params["_json"][0]["cards"][0]["suit"] for suit
        # params["_json"][0] is player
        # params["_json"][1] is dealer
        binding.pry
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