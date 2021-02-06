class CreateGamesFromResults < ActiveRecord::Migration[6.0]
  def change
    create_table :games_from_results do |t|

      t.timestamps
    end
  end
end
