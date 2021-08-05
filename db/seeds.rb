# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
player = Player.create(hand: 'King', hand_value: 10)
player1 = Player.create(hand: 'Two', hand_value: 2)
player2 = Player.create(hand: 'Seven', hand_value: 7)
player3 = Player.create(hand: 'Ten', hand_value: 10)


jack = Deck.create(value: 10, suit: "hearts")
queen = Deck.create(value: 10, suit: "hearts")
king = Deck.create(value: 10, suit: "hearts")

