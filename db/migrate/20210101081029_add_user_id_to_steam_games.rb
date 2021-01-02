class AddUserIdToSteamGames < ActiveRecord::Migration[6.0]
  def change
    add_column :steam_games, :user_id, :integer
    add_index :steam_games, :user_id
  end
end
