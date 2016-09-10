class CreateCsgoStreamers < ActiveRecord::Migration
  def change
    create_table :csgo_streamers do |t|
      t.string :url
      t.string :logo_src
      t.string :name
      t.string :description
      t.integer :viewers

      t.timestamps null: false
    end
  end
end
