class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :value
      t.string :suit

      t.belongs_to :deck, null: false, foreign_key: true
      t.belongs_to :player, null: false, foreign_key: true
      

      t.timestamps
    end
  end
end
