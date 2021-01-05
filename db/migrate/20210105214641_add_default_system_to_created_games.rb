class AddDefaultSystemToCreatedGames < ActiveRecord::Migration[6.0]
  def change
    change_column_default :created_games, :service, "Manual"
    change_column :created_games, :game_id, :int, null: false, unique: true, auto_increment: true
  end
end
