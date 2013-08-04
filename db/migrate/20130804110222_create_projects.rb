class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.integer :owner_id
      t.string :access_token
      t.string :secret
      t.integer :archive, :default => 0

      t.timestamps
    end
  end
end
