class CreateWants < ActiveRecord::Migration
  def change
    create_table :wants do |t|
      t.string :name
      t.decimal :price
      t.string :purchase_condition

      t.timestamps
    end
  end
end
