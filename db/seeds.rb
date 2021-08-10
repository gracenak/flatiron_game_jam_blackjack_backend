# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



jack = Deck.create(face: "Jack", suit: "hearts")
queen = Deck.create(face: "Queen", suit: "hearts")
king = Deck.create(face: "King", suit: "hearts")
ace = Deck.create(face: "Ace", suit: "hearts")

jake = Player.create(name: "Jake", hand: [], total: 9, deck_id: jack.id, card_id: card1.id)
dealer = Player.create(name: "Dealer", hand: [], total: 11, deck_id: queen.id, card_id: card2.id)
sean = Player.create(name: 'Sean', hand: [], total: 7, deck_id: king.id, card_id: card3.id)
grace = Player.create(name: 'Grace', hand: [], total: 10, deck_id: ace.id, card_id: card3.id)

card1 = Card.create(value: "10", suit: "hearts", deck_id: jack.id)
card2 = Card.create(value: "Jack", suit: "hearts", deck_id: jack.id)
card3 = Card.create(value: "Ace", suit: "hearts", deck_id: ace.id)
card3 = Card.create(value: "9", suit: "hearts", deck_id: ace.id)




