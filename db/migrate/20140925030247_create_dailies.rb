class CreateDailies < ActiveRecord::Migration
  def change
    create_table :dailies do |t|
      t.string :name
      t.integer :streak
      t.datetime :last_completed

      t.timestamps
    end
  end
end
