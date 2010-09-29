class CreateRepEvents < ActiveRecord::Migration
  def self.up
    create_table :rep_events, :id => false do |t|
      t.integer "event_id", :null => false
      t.string   "event_type",   :limit => 12, :null => false
      t.integer "user_id", :null => false
      t.integer "author_id",   :null => false
      t.datetime "created_at",   :null => false
    end
  end

  def self.down
    drop_table :rep_events
  end
end
