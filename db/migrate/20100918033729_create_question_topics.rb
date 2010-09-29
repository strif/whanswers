class CreateQuestionTopics < ActiveRecord::Migration
  def self.up
    create_table :question_topics, :id => false do |t|
      t.integer  "question_id", :null => false
      t.integer  "topic_id", :null => false
    end
  end

  def self.down
    drop_table :question_topics
  end
end
