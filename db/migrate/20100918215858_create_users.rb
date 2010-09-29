class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string   "username",         :limit => 40,   :null => false
      t.string   "email",            :limit => 100,  :null => false
      t.float  "points_count"
      t.string   "usergroup",        :limit => 20,   :null => false, :null => false
      t.string   "hashed_password",  :limit => 40,   :null => false
      t.integer  "activation"       
      t.datetime "created_at",                    :null => false
      t.string   "salt",             :limit => 40, :null => false
      t.datetime "last_login"
    end
  end

  def self.down
    drop_table :users
  end
end
