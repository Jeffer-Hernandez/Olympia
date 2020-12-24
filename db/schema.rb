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

ActiveRecord::Schema.define(version: 2020_12_23_195125) do

  create_table "competitions", force: :cascade do |t|
    t.string "title"
    t.string "category"
    t.string "description"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_competitions_on_user_id"
  end

  create_table "training_sessions", force: :cascade do |t|
    t.datetime "date"
    t.string "condition"
    t.integer "competition_id", null: false
    t.integer "workout_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["competition_id"], name: "index_training_sessions_on_competition_id"
    t.index ["workout_id"], name: "index_training_sessions_on_workout_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.integer "age"
    t.string "height"
    t.integer "weight"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "category"
    t.string "intensity"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["user_id"], name: "index_workouts_on_user_id"
  end

  add_foreign_key "competitions", "users"
  add_foreign_key "training_sessions", "competitions"
  add_foreign_key "training_sessions", "workouts"
  add_foreign_key "workouts", "users"
end
