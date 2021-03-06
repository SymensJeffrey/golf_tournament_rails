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

ActiveRecord::Schema.define(version: 2021_09_28_190125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "scorecards", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.integer "hole1"
    t.integer "hole2"
    t.integer "hole3"
    t.integer "hole4"
    t.integer "hole5"
    t.integer "hole6"
    t.integer "hole7"
    t.integer "hole8"
    t.integer "hole9"
    t.integer "front_total"
    t.integer "hole10"
    t.integer "hole11"
    t.integer "hole12"
    t.integer "hole13"
    t.integer "hole14"
    t.integer "hole15"
    t.integer "hole16"
    t.integer "hole17"
    t.integer "hole18"
    t.integer "back_total"
    t.integer "total_score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
