class CreateDotaReddits < ActiveRecord::Migration
  def change
    create_table :dota_reddits do |t|
      t.string :url
      t.string :title
      t.integer :upvotes
      t.integer :comments

      t.timestamps null: false
    end
  end
end
