# This migration comes from login (originally 20120729190657)
class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:login_users) do |t|
      t.string :first_name, :last_name, :email, :default => ""
      t.string :encrypted_password, :default => ""

      # Trackable
      t.integer  :sign_in_count, :default => 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      # Token authenticatable
      t.string :authentication_token

      # Non-devise fields
      t.string :twitter, :github, :screen_name

      t.timestamps
    end

    add_index :login_users, :authentication_token, :unique => true
  end
end
