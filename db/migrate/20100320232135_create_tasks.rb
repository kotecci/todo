class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.integer  :user_id#,     :null => false
      t.integer  :category_id#, :null => false
      t.integer  :priority_id#, :null => false
      t.string   :name
      t.string   :description, :limit => 200
      t.boolean  :done#, :null => false
      t.date     :till
      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
