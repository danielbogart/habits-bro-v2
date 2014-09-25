class AddUserIdToDaily < ActiveRecord::Migration
  def change
    add_column :dailies, :user_id, :integer
  end
end
