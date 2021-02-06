class AddDetailsToGamesFromResults < ActiveRecord::Migration[6.0]
  def change
    add_column :games_from_results, :game_id, :integer
    add_column :games_from_results, :title, :string
    add_column :games_from_results, :image, :string
    add_column :games_from_results, :system, :string
    add_column :games_from_results, :released_date, :string
    add_column :games_from_results, :user_id, :integer
    add_column :games_from_results, :service, :string
  end
end
