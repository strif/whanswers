class CreateTopics < ActiveRecord::Migration
  def self.up
    create_table :topics do |t|
       t.string   "name",        :limit => 60, :null => false
       t.integer  "followers"
      t.integer  "questions_count"
    end
  end

  def self.down
    drop_table :topics
  end
end
