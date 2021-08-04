class Deck < ActiveRecord::Migration[6.0]
  def change
    create_table :deck do |t|
      t.string :value
      t.string :suit
    end
  end
end
