class CreateSettings < ActiveRecord::Migration
  def self.up
    create_table :settings, :id => false do |t|
      t.integer  "user_id",:null => false
      t.boolean "answered", :null => false, :default => true
      t.boolean "questioned", :null => false, :default => true
      t.boolean "updated", :null => false, :default => false
      t.boolean "commented", :null => false, :default => false
      t.boolean "attached", :null => false, :default => true
      t.boolean "messaged", :null => false, :default => true
      t.boolean "newsletters", :null => false, :default => false
    end
  end

  def self.down
    drop_table :settings
  end
end
