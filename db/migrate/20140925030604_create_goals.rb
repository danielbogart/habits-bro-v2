class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :name
      t.date :target_date
      t.integer :streak

      t.timestamps
    end
  end
end
