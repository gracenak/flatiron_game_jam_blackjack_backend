class Card < ApplicationRecord
  belongs_to :player

def shuffle
  Card.all.shuffle
end

def face_value
  if self.value == "Jack" || self.value =="Queen" || self.value == "King"
      return 10
  elsif self.value == "Ace"
    return 11
  else
    return self.value.to_i
  end
end

end
