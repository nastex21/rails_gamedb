class AddDefaultSystemToSteamGames < ActiveRecord::Migration[6.0]
  def change
    change_column_default :steam_games, :system, "PC"
  end
end
