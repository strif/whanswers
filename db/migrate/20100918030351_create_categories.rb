class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string "name",   :limit => 100,  :null => false
      t.string "parent", :limit => 100
      t.text "topics"
    end
  end

  def self.down
    drop_table :categories
  end
end
