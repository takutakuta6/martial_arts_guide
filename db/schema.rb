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

ActiveRecord::Schema.define(version: 2020_08_05_044548) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "game_comments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "game_movie_id", null: false
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_movie_id"], name: "index_game_comments_on_game_movie_id"
    t.index ["user_id"], name: "index_game_comments_on_user_id"
  end

  create_table "game_likes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "game_movie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_movie_id"], name: "index_game_likes_on_game_movie_id"
    t.index ["user_id", "game_movie_id"], name: "index_game_likes_on_user_id_and_game_movie_id", unique: true
    t.index ["user_id"], name: "index_game_likes_on_user_id"
  end

  create_table "game_movies", force: :cascade do |t|
    t.string "url"
    t.string "catchphrase"
    t.integer "position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["catchphrase"], name: "index_game_movies_on_catchphrase"
    t.index ["url"], name: "index_game_movies_on_url", unique: true
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "group"
    t.string "birthplace"
    t.string "content"
    t.integer "position"
    t.float "height"
    t.float "weight"
    t.integer "win"
    t.integer "lose"
    t.integer "ko_win"
    t.integer "draw"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "age"
    t.string "movie_url"
    t.string "style"
    t.index ["group"], name: "index_players_on_group"
    t.index ["name"], name: "index_players_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "image"
    t.text "introduction"
    t.string "birthplace"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["name"], name: "index_users_on_name", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "game_comments", "game_movies"
  add_foreign_key "game_comments", "users"
  add_foreign_key "game_likes", "game_movies"
  add_foreign_key "game_likes", "users"
end
