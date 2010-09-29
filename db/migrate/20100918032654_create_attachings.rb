class CreateAttachings < ActiveRecord::Migration
  def self.up
    create_table :attachings, :id => false do |t|
      t.integer "user_id", :null => false
      t.integer "question_id", :null => false    
      t.integer "attached_id", :null => false
    end
  end

  def self.down
    drop_table :attachings
  end
end
