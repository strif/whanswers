class CreateUserFollowings < ActiveRecord::Migration
  def self.up
    create_table :user_followings, :id => false do |t|
      t.integer "followed_id", :null => false
      t.integer "user_id", :null => false
      t.datetime  "last_notified"
      t.datetime  "last_updated"
    end
  end

  def self.down
    drop_table :user_followings
  end
end
