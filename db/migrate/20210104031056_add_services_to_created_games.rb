class AddServicesToCreatedGames < ActiveRecord::Migration[6.0]
  def change
    add_column :created_games, :service, :string
  end
end
