class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.integer  "user_id",                      :null => false
      t.string   "title",           :limit => 120,               :null => false
      t.text   "body",                      :null => false
      t.integer  "category_id"
      t.datetime "created_at",                    :null => false
      t.string   "status",         :limit => 12,  :null => false, :default => "approved"
      t.float  "votes_count"
      t.integer  "answers_count"
    end
  end

  def self.down
    drop_table :questions
  end
end
