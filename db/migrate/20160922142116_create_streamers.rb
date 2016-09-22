class CreateStreamers < ActiveRecord::Migration
  def change
    create_table :streamers do |t|
      t.string :url
      t.string :logo_src
      t.string :name
      t.string :description
      t.integer :viewers
      t.integer :game_id

      t.timestamps null: false
    end
  end
end
