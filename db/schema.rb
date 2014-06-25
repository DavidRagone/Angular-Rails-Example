# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140625222009) do

  create_table "books", :force => true do |t|
    t.string   "title"
    t.string   "author_name"
    t.string   "image_url"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "ratings", :force => true do |t|
    t.integer  "book_id",    :null => false
    t.integer  "user_id",    :null => false
    t.integer  "rating"
    t.string   "shelf"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.text     "bio"
    t.string   "display_name"
    t.string   "country"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
