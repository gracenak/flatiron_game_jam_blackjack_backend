class Deck < ApplicationRecord
    has_many :players

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
    

end
