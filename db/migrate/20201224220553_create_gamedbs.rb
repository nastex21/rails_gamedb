class CreateGamedbs < ActiveRecord::Migration[6.0]
  def change
    create_table :gamedbs do |t|
      t.string :username
      t.string :password
      t.string :steamID

      t.timestamps
    end
  end
end
