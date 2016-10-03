class CreateHeadlines < ActiveRecord::Migration
  def change
    create_table :headlines do |t|
      t.string :title
      t.string :description
      t.string :img

      t.timestamps null: false
    end
  end
end
