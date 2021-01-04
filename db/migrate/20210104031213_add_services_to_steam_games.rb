class AddServicesToSteamGames < ActiveRecord::Migration[6.0]
  def change
    add_column :steam_games, :service, :string
  end
end
