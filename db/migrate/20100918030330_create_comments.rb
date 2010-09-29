class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer  "case_id",     :null => false
      t.string   "case_type",   :limit => 12, :null => false, :default => "question"
      t.integer  "user_id",     :null => false
      t.string   "body",        :limit => 256, :null => false
      t.string   "status",      :limit => 12, :null => false, :default => "approved"
      t.datetime "created_at",   :null => false
    end
  end

  def self.down
    drop_table :comments
  end
end
