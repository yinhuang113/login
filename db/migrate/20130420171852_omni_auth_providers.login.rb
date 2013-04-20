# This migration comes from login (originally 20120731003104)
class OmniAuthProviders < ActiveRecord::Migration
  def change
    create_table :login_providers do |t|
      t.integer :user_id, :null => false
      t.string :provider, :uid, :null => false
    end
  end
end
