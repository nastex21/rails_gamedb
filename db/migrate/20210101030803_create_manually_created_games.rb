class CreateManuallyCreatedGames < ActiveRecord::Migration[6.0]
  def change
    create_table :manually_created_games do |t|
      t.integer :game_id
      t.string :title
      t.string :image
      t.string :system
      t.string :released_date

      t.timestamps
    end
  end
end
