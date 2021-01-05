class ChangeColumnToCreatedGames < ActiveRecord::Migration[6.0]
  def change
    change_column_null :created_games, :game_id, true
  end
end
