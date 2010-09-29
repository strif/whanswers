class CreateDatatypes < ActiveRecord::Migration
  def self.up
    create_table :datatypes do |t|
      t.integer  "user_id", :null => false
      t.string  "name",  :limit => 60, :null => false
    end
  end

  def self.down
    drop_table :datatypes
  end
end
