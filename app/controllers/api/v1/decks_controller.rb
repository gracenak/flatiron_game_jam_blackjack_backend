class Api::V1::DecksController < ApplicationController

    def index 
        @decks = Deck.all
        render json: @decks

    end

    def show
        @deck = Deck.find_by(id: params[:id])

    end

    private

    def deck_params
        params.require(:deck).permit(:value, :suit)
    end

end