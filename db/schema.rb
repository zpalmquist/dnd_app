# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180402213707) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "character_classes", force: :cascade do |t|
    t.string "title"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.float "height"
    t.integer "weight"
    t.string "eye_color"
    t.integer "age"
    t.string "skin_color"
    t.string "hair_color"
    t.integer "max_hit_points"
    t.integer "ac"
    t.integer "xp"
    t.integer "speed"
    t.integer "passive_perception"
    t.integer "initiative"
    t.string "alignment"
    t.bigint "race_id"
    t.bigint "class_id"
    t.index ["class_id"], name: "index_characters_on_class_id"
    t.index ["race_id"], name: "index_characters_on_race_id"
  end

  create_table "classes", force: :cascade do |t|
    t.string "title"
  end

  create_table "races", force: :cascade do |t|
    t.string "title"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.string "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
