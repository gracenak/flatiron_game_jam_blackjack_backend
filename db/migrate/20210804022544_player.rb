class Player < ActiveRecord::Migration[6.0]
  def change
    create_table :player do |t|
      t.string :hand
      t.integer :hand_value
    end
  end
end
