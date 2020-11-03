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

ActiveRecord::Schema.define(version: 2020_11_03_194123) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "therapist_id"
    t.index ["therapist_id"], name: "index_favorites_on_therapist_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "therapists", force: :cascade do |t|
    t.string "full_name"
    t.string "personality_traits"
    t.string "email", default: "", null: false
    t.integer "fee"
    t.string "description"
    t.string "professional_description"
    t.integer "years_experience"
    t.integer "therapist_age"
    t.string "therapist_gender"
    t.string "therapist_expertise"
    t.string "therapy_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "email", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
