class CreateInsertedGames < ActiveRecord::Migration[6.0]
  def change
    create_table :inserted_games do |t|

      t.timestamps
    end
  end
end
