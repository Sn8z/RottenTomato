class DropOldTables < ActiveRecord::Migration
  def up
    drop_table :csgo_guides
    drop_table :csgo_news
    drop_table :csgo_youtubes
    drop_table :csgo_reddits
    drop_table :csgo_streamers
    drop_table :dota_guides
    drop_table :dota_news
    drop_table :dota_youtubes
    drop_table :dota_reddits
    drop_table :dota_streamers
    drop_table :dota_matches
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
