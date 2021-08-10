class Api::V1::DecksController < ApplicationController

    def index 
        @cards = Cards.all
        render json: @cards

    end

    def show
        @cards = Cards.find_by(id: params[:id])

    end


    private

    def deck_params
        params.require(:card).permit(:value, :suit)
    end

end