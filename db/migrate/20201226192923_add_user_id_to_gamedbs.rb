class AddUserIdToGamedbs < ActiveRecord::Migration[6.0]
  def change
    add_column :gamedbs, :user_id, :integer
    add_index :gamedbs, :user_id
  end
end
