class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.string :url
      t.string :title
      t.integer :game_id

      t.timestamps null: false
    end
  end
end
