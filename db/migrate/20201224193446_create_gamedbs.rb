class CreateGamedbs < ActiveRecord::Migration[6.0]
  def change
    create_table :gamedbs do |t|

      t.timestamps
    end
  end
end
