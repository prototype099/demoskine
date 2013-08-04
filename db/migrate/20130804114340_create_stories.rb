class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.integer :project_id
      t.text :content
      t.integer :tracker_id
      t.integer :points
      t.integer :requester_id
      t.integer :owner_id
      t.integer :status

      t.timestamps
    end
  end
end
