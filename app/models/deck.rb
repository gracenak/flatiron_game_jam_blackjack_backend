class Deck < ApplicationRecord
    has_many :players
    has_many :cards

    def shuffle
        Deck.all.shuffle
    end

    def face_value(x)
        if x.value == "Jack" || "Queen" || "King"
            return 10
        end
    end

    def ace_value(x)
        if x.value == "Ace" 
            return 1 || 11
        end
    end

    def deal(num, player)
        cards = []
        num.times(cards.shift.generate_card(player))
    end

    def generate_card(player)

    end
    

end
