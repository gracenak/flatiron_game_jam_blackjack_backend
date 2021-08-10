class Card < ApplicationRecord
  # belongs_to :deck
  belongs_to :player

def shuffle
  Card.all.shuffle
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
