class CreateQuestionFollowings < ActiveRecord::Migration
  def self.up
    create_table :question_followings, :id => false do |t|
      t.integer "question_id", :null => false
      t.integer "user_id", :null => false
      t.datetime  "last_notified"
      t.datetime  "last_updated"
    end
  end

  def self.down
    drop_table :question_followings
  end
end
