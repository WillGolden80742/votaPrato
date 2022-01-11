class CreatePratos < ActiveRecord::Migration[7.0]
  def change
    create_table :pratos do |t|
      t.integer :restaurante_id
      t.string :nome
      t.timestamps
    end
  end
end
