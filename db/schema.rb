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

ActiveRecord::Schema.define(version: 20190228203341) do

  create_table "box_whisker_plots", force: :cascade do |t|
    t.float    "median"
    t.float    "first_quartile"
    t.integer  "second_quartile"
    t.float    "third_quartile"
    t.float    "least"
    t.float    "greatest"
    t.integer  "chart_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "least_indice"
    t.integer  "greatest_indice"
    t.integer  "median_indice"
    t.integer  "first_quartile_indice"
    t.integer  "third_quartile_indice"
  end

  create_table "charts", force: :cascade do |t|
    t.string   "chart_type"
    t.integer  "chapter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "common_words", force: :cascade do |t|
    t.integer  "chapter_num"
    t.integer  "verse_num"
    t.text     "word_num"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "verse_num_sw"
  end

  create_table "proverbs", force: :cascade do |t|
    t.integer  "chapter"
    t.integer  "verse_num"
    t.string   "verse_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stop_words", force: :cascade do |t|
    t.text     "word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
