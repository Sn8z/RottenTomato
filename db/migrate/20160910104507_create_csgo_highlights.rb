class CreateCsgoHighlights < ActiveRecord::Migration
  def change
    create_table :csgo_highlights do |t|
      t.string :url
      t.string :img
      t.string :title

      t.timestamps null: false
    end
  end
end
