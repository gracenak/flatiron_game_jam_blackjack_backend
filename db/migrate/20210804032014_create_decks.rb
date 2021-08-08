class CreateDecks < ActiveRecord::Migration[6.0]
  def change
    create_table :decks do |t|
      t.string :face
      t.string :suit

      t.timestamps
    end
  end
end
