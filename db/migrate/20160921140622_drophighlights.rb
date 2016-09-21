class Drophighlights < ActiveRecord::Migration
  def up
    drop_table :csgo_highlights
    drop_table :dota_highlights
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
