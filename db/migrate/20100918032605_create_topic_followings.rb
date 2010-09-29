class CreateTopicFollowings < ActiveRecord::Migration
  def self.up
    create_table :topic_followings, :id => false do |t|
      t.integer "topic_id", :null => false
      t.integer "user_id", :null => false
    end
  end

  def self.down
    drop_table :topic_followings
  end
end
