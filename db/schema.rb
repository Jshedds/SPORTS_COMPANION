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

ActiveRecord::Schema[7.1].define(version: 2023_12_11_204807) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "athletes", force: :cascade do |t|
    t.string "name"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chatrooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "sport_id"
    t.index ["sport_id"], name: "index_chatrooms_on_sport_id"
  end

  create_table "descriptions", force: :cascade do |t|
    t.text "overview_of_position"
    t.text "primary_objectives"
    t.text "strengths"
    t.text "weaknesses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "position_id"
    t.index ["position_id"], name: "index_descriptions_on_position_id"
  end

  create_table "equipment_needs", force: :cascade do |t|
    t.string "footwear"
    t.string "required_equipment"
    t.text "safety_gear"
    t.text "infrastructure"
    t.string "clothing"
    t.bigint "sport_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sport_id"], name: "index_equipment_needs_on_sport_id"
  end

  create_table "famous_players", force: :cascade do |t|
    t.string "team_trophies_won"
    t.string "teams_countries"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "famous_player_name"
    t.bigint "position_id"
    t.string "individual_milestones"
    t.index ["position_id"], name: "index_famous_players_on_position_id"
  end

  create_table "favourite_positions", force: :cascade do |t|
    t.bigint "position_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["position_id"], name: "index_favourite_positions_on_position_id"
    t.index ["user_id"], name: "index_favourite_positions_on_user_id"
  end

  create_table "favourites", force: :cascade do |t|
    t.bigint "sport_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sport_id"], name: "index_favourites_on_sport_id"
    t.index ["user_id"], name: "index_favourites_on_user_id"
  end

  create_table "histories", force: :cascade do |t|
    t.string "invented"
    t.string "creator"
    t.string "country_of_origin"
    t.string "most_successful_teams"
    t.text "milestones"
    t.bigint "sport_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sport_id"], name: "index_histories_on_sport_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.bigint "chatroom_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "overviews", force: :cascade do |t|
    t.text "short_description"
    t.text "game_objective"
    t.string "governing_body_url"
    t.bigint "sport_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sport_id"], name: "index_overviews_on_sport_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "positions_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "positions_tag"
    t.bigint "sport_id"
    t.index ["sport_id"], name: "index_positions_on_sport_id"
  end

  create_table "rules", force: :cascade do |t|
    t.string "game_duration"
    t.text "scoring"
    t.integer "player_per_team"
    t.integer "referees"
    t.text "most_important_rules"
    t.text "field_size"
    t.string "field_type"
    t.bigint "sport_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sport_id"], name: "index_rules_on_sport_id"
  end

  create_table "sports", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "terminologies", force: :cascade do |t|
    t.text "most_important_terms"
    t.bigint "sport_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sport_id"], name: "index_terminologies_on_sport_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.boolean "admin", default: false, null: false
    t.string "authentication_token", limit: 30
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "chatrooms", "sports"
  add_foreign_key "descriptions", "positions"
  add_foreign_key "equipment_needs", "sports"
  add_foreign_key "famous_players", "positions"
  add_foreign_key "favourite_positions", "positions"
  add_foreign_key "favourite_positions", "users"
  add_foreign_key "favourites", "sports"
  add_foreign_key "favourites", "users"
  add_foreign_key "histories", "sports"
  add_foreign_key "messages", "chatrooms"
  add_foreign_key "messages", "users"
  add_foreign_key "overviews", "sports"
  add_foreign_key "positions", "sports"
  add_foreign_key "rules", "sports"
  add_foreign_key "terminologies", "sports"
end
