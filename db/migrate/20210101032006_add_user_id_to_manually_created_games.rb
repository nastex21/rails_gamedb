class AddUserIdToManuallyCreatedGames < ActiveRecord::Migration[6.0]
  def change
    add_column :manually_created_games, :user_id, :integer
    add_index :manually_created_games, :user_id
  end
end
