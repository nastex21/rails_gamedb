class AddDefaultToSteamGames < ActiveRecord::Migration[6.0]
  def change
    change_column_default :steam_games, :service, "Steam"
  end
end
