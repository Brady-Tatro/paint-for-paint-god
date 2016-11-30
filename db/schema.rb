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

ActiveRecord::Schema.define(version: 20161130184555) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "colors", force: :cascade do |t|
    t.string  "name",                                null: false
    t.boolean "base",                default: false
    t.boolean "secondary_base",      default: false
    t.boolean "highlight",           default: false
    t.boolean "secondary_highlight", default: false
    t.string  "hex"
  end

  create_table "pictures", force: :cascade do |t|
    t.string "army",             null: false
    t.string "primer",           null: false
    t.string "base",             null: false
    t.string "second_base"
    t.string "third_base"
    t.string "highlight",        null: false
    t.string "second_highlight"
    t.string "third_highlight"
    t.string "shade",            null: false
    t.string "second_shade"
    t.string "photo"
  end

end
