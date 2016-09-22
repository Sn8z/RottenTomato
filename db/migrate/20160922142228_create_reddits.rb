class CreateReddits < ActiveRecord::Migration
  def change
    create_table :reddits do |t|
      t.string :url
      t.string :title
      t.integer :upvotes
      t.integer :comments
      t.integer :game_id

      t.timestamps null: false
    end
  end
end
