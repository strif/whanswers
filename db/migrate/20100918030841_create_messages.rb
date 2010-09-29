class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.integer "idto"
      t.string  "sender",                 :null => false
      t.string  "to_id",                  :null => false
      t.string  "subject"
      t.text    "body",                 :null => false
      t.integer "date_sent",              :null => false
      t.integer "is_read",   :limit => 2, :null => false
      t.integer "is_spam",   :limit => 2, :null => false
      t.integer "is_trash",  :limit => 2, :null => false
      t.integer "is_draft",  :limit => 2, :null => false
      t.integer "is_email",  :limit => 2, :null => false
    end
  end

  def self.down
    drop_table :messages
  end
end
