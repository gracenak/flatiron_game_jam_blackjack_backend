class API::V1::CardsController < ApplicationController

    before action :set_player

    def index
        @cards = Card.all
        render json :@cards
    end

    def show 
        @card = Card.find_by(params[:id])
        render json :@card
    end

    def create
        @card = @player.cards.new(card_params)
        if @card.save
            render json: @card
        else
            render json: {error: @review.errors.messages}, status: 422 
        end
    end

    private

    def set_player
        @player = Player.find(params[:recipe_id])
    end

    def card_params
        params.require(:card).permit(:value, :suit, :player_id)
    end
end
