# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_10_142737) do

  create_table "clientes", force: :cascade do |t|
    t.string "nome", limit: 80
    t.integer "idade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pratos", force: :cascade do |t|
    t.integer "restaurante_id"
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "qualificacaos", force: :cascade do |t|
    t.integer "cliente_id"
    t.integer "restaurante_id"
    t.integer "prato_id"
    t.float "nota"
    t.text "comentario", limit: 500
    t.float "valor_gasto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "restaurantes", force: :cascade do |t|
    t.string "nome"
    t.string "endereco"
    t.string "especialidade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
