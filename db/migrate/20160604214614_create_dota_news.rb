class CreateDotaNews < ActiveRecord::Migration
  def change
    create_table :dota_news do |t|
      t.string :url
      t.string :title

      t.timestamps null: false
    end
  end
end
