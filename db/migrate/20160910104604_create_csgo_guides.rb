class CreateCsgoGuides < ActiveRecord::Migration
  def change
    create_table :csgo_guides do |t|
      t.string :title
      t.string :url
      
      t.timestamps null: false
    end
  end
end
