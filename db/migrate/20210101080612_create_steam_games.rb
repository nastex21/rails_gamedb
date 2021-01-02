class CreateSteamGames < ActiveRecord::Migration[6.0]
  def change
    create_table :steam_games do |t|
      t.integer :game_id
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
