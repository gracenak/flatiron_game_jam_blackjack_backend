class Card < ApplicationRecord
  belongs_to :player

def shuffle
  Card.all.shuffle
end

def face_value(x)
  if x.value == "Jack" || x.value =="Queen" || x.value == "King"
      return 10
  elsif x.value == "Ace"
    return 11
  else
    return x.value.to_i
  end
end

end
