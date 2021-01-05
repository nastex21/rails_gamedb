class AddDefaultIdToCreatedGames < ActiveRecord::Migration[6.0]
  def change
    change_column :created_games, :game_id, :int, null: false, unique: true, auto_increment: true
  end
end
