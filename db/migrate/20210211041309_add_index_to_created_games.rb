class AddIndexToCreatedGames < ActiveRecord::Migration[6.0]
  def change
    remove_column :created_games, :game_id, :integer
    add_column :created_games, :game_id, :integer
    add_index :created_games, :game_id, :unique => true
    add_column :games_from_results, :game_id, :integer
    add_index :games_from_results, :game_id, :unique => true
  end
end
