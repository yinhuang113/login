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

ActiveRecord::Schema.define(:version => 20130420171852) do

  create_table "login_providers", :force => true do |t|
    t.integer "user_id",  :null => false
    t.string  "provider", :null => false
    t.string  "uid",      :null => false
  end

  create_table "login_users", :force => true do |t|
    t.string   "first_name",           :default => ""
    t.string   "last_name",            :default => ""
    t.string   "email",                :default => ""
    t.string   "encrypted_password",   :default => ""
    t.integer  "sign_in_count",        :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "authentication_token"
    t.string   "twitter"
    t.string   "github"
    t.string   "screen_name"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  add_index "login_users", ["authentication_token"], :name => "index_login_users_on_authentication_token", :unique => true

end
