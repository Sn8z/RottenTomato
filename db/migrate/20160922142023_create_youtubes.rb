class CreateYoutubes < ActiveRecord::Migration
  def change
    create_table :youtubes do |t|
      t.string :embed
      t.integer :game_id

      t.timestamps null: false
    end
  end
end
