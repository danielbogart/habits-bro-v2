class ChangeColumn < ActiveRecord::Migration
  def change
  	change_column :dailies, :streak, :integer, :default => 0
  end
end
