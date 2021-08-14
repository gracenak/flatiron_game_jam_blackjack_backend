# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# jack = Deck.create(face: "Jack", suit: "hearts")
# queen = Deck.create(face: "Queen", suit: "hearts")
# king = Deck.create(face: "King", suit: "hearts")
# ace = Deck.create(face: "Ace", suit: "hearts")

jake = Player.create(hand_value: 0)
dealer = Player.create(hand_value: 0)
sean = Player.create(hand_value: 0)
grace = Player.create(hand_value: 0)

card1 = Card.create(value: "10", suit: "hearts", player_id: jake.id)
card2 = Card.create(value: "Jack", suit: "hearts", player_id: dealer.id)
card3 = Card.create(value: "Ace", suit: "hearts", player_id: sean.id)
card4 = Card.create(value: "9", suit: "hearts", player_id: grace.id)




