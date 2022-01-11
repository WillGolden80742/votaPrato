class CreateRestaurantes < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurantes do |t|
      t.string :nome
      t.string :endereco
      t.string :especialidade

      t.timestamps
    end
  end
end
