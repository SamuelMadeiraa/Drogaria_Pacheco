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

ActiveRecord::Schema[7.1].define(version: 2024_03_15_140516) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "imagecategory"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_categories_on_product_id"
  end

  create_table "cupoms", force: :cascade do |t|
    t.string "nome"
    t.date "validade"
    t.float "percentual_desconto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "price"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.bigint "category_id", null: false
    t.bigint "cupom_id"
    t.string "cupom"
    t.boolean "discount"
    t.boolean "discountable"
    t.boolean "desconto_disponivel"
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["cupom_id"], name: "index_products_on_cupom_id"
  end

  add_foreign_key "categories", "products"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "cupoms"
end
