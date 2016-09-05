class CreateDotaYoutubes < ActiveRecord::Migration
  def change
    create_table :dota_youtubes do |t|
      t.string :embed

      t.timestamps null: false
    end
  end
end
