class Api::V1::PlayersController < ApplicationController

    def index
        @players = Player.all
        render json: @players
    end

    def show
        @player = Player.find_by(id: params[:id])
        render json: @player
    end

    def create
        # params["_json"][0]["cards"][0]["code"] for code
        # params["_json"][0]["cards"][0]["value"] for value
        # params["_json"][0]["cards"][0]["suit"] for suit
        # params["_json"][0] is player
        # params["_json"][1] is dealer
        @player = Player.new(player_params)
        binding.pry
        if @player.save
            render json: @player
        else
            render json: {error: @recipe.error.messages}, status: 422
        end
    end

    def update
        @player = Player.find_by(id: params[:id])
        if @player.update(hand_value: params[:player][:hand_value])
            @player.save
            render json: @player
        else
            render json: {error: @recipe.error.messages}, status: 422
        end
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
        params.require(:player).permit(:hand_value)
    end
end