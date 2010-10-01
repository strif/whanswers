class CreateAnswers < ActiveRecord::Migration
  def self.up
    create_table :answers do |t|
      t.integer  "question_id",   :null => false
      t.integer  "user_id",                       :null => false
      t.text   "body",                         :null => false
      t.string   "status",       :limit => 12,   :null => false, :default => "approved"
      t.datetime "created_at",                   :null => false
      t.integer  "votes", :default => 0
    end
  end

  def self.down
    drop_table :answers
  end
end
