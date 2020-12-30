class CreateSteamGames < ActiveRecord::Migration[6.0]
  def change
    create_table :steam_games do |t|
      t.integer :game_id
      t.integer :user_id
      t.string :title
      t.string :image
      t.string :system
      t.timestamps 
    end
  end
end
