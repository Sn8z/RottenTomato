class CreateCsgoYoutubes < ActiveRecord::Migration
  def change
    create_table :csgo_youtubes do |t|
      t.string :embed

      t.timestamps null: false
    end
  end
end
