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

ActiveRecord::Schema[8.0].define(version: 2025_09_28_173209) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "cooking_processes", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "order_number", default: 0, null: false
    t.string "process", default: "0", null: false
    t.uuid "recipe_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_cooking_processes_on_recipe_id"
  end

  create_table "materials", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "usage_amount", default: "", null: false
    t.uuid "recipe_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_materials_on_recipe_id"
  end

  create_table "nutritions", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "nutrient", default: "", null: false
    t.integer "amount", default: 0, null: false
    t.uuid "recipe_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_nutritions_on_recipe_id"
  end

  create_table "recipes", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "how_to_make", default: ""
    t.integer "number_of_people", default: 0, null: false
    t.integer "cooking_time", default: 0, null: false
    t.string "category", default: "", null: false
    t.integer "calories", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cooking_processes", "recipes"
  add_foreign_key "materials", "recipes"
  add_foreign_key "nutritions", "recipes"
end
