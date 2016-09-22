class AddGameidToNews < ActiveRecord::Migration
  def change
    add_column :news, :game_id, :integer
  end
end
