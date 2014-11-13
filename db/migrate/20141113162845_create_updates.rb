class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.text :status
      t.string :user
      t.integer :likes
    end
  end
end
