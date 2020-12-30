class CreateManuallyAddedGames < ActiveRecord::Migration[6.0]
  def change
    create_table :manually_added_games do |t|
      t.integer :game_id
      t.integer :user_id
      t.string :title
      t.string :image
      t.string :system
      t.string :released
      


      t.timestamps
    end
  end
end
