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

ActiveRecord::Schema.define(version: 20161113171640) do

  create_table "comments", force: :cascade do |t|
    t.string   "user_name"
    t.text     "comment"
    t.integer  "concert_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["concert_id"], name: "index_comments_on_concert_id"
    # reference will add the belong_to: t.index column. This were the commands:
    # rails g model Comment user_name:string comment:text concert:references

  end

  create_table "concerts", force: :cascade do |t|
    t.string   "artist"
    t.string   "venue"
    t.string   "city"
    t.date     "date"
    t.string   "description"
    t.integer  "price"
    t.datetime "done_at"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
