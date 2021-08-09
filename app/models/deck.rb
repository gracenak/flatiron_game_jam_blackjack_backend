class Deck < ApplicationRecord
    has_many :players
    has_many :cards

    def shuffle
        Deck.all.shuffle
    end

    def face_value(x)
        if x.face == "Jack" || "Queen" || "King"
            return 10
        end
    end

    def ace_value(x)
        if x.face == "Ace" 
            return 1 || 11
        end
    end

<<<<<<< HEAD
    def deal(num, player)
        cards = []
        num.times(cards.shift.generate_card(player))
    end

    def generate_card(player)

    end
=======



>>>>>>> main
    

end
