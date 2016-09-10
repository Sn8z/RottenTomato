class CreateCsgoNews < ActiveRecord::Migration
  def change
    create_table :csgo_news do |t|
      t.string :url
      t.string :title

      t.timestamps null: false
    end
  end
end
