class AddUserIdToCreatedGames < ActiveRecord::Migration[6.0]
  def change
    add_column :created_games, :user_id, :integer
    add_index :created_games, :user_id
  end
end
