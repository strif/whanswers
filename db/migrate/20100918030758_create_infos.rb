class CreateInfos < ActiveRecord::Migration
  def self.up
    create_table :infos, :id => false do |t|
      t.integer "user_id", :null => false
      t.integer "datatype_id", :null => false
      t.string  "value",  :limit => 100, :null => false
    end
  end

  def self.down
    drop_table :infos
  end
end
