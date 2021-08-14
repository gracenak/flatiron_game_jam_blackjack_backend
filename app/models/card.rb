class Card < ApplicationRecord
  belongs_to :player

def shuffle
  Card.all.shuffle
end

def face_value(x)
  if x.value == "Jack" || x.value =="Queen" || x.value == "King"
      return 10
  elsif x.value == "Ace"
    return 1
  else
    return x.value.to_i
  end
end

# def ace_value(x)
#   if x.value() == "Ace" 
#       return 1 || 11
#   end
#   end
end
