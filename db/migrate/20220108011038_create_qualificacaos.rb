class CreateQualificacaos < ActiveRecord::Migration[7.0]
  def change
    create_table :qualificacaos do |t|
      t.integer :cliente_id
      t.integer :restaurante_id
      t.integer :prato_id
      t.float :nota
      t.text :comentario, :limit => 500
      t.float :valor_gasto
      t.timestamps
    end
  end
end
