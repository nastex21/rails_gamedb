# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_11_041309) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "created_games", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.string "system"
    t.string "released_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.string "service", default: "Manual"
    t.integer "game_id"
    t.index ["game_id"], name: "index_created_games_on_game_id", unique: true
    t.index ["user_id"], name: "index_created_games_on_user_id"
  end

  create_table "games_from_results", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.string "image"
    t.string "system"
    t.string "released_date"
    t.integer "user_id"
    t.string "service"
    t.integer "game_id"
    t.index ["game_id"], name: "index_games_from_results_on_game_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
