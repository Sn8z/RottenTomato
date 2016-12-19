class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :team1
      t.string :team1_score
      t.string :team2
      t.string :team2_score
      t.belongs_to :game, index: true, foreign_key: true
      t.string :tournament
      t.string :twitch

      t.timestamps null: false
    end
  end
end
