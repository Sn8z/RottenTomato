class AddGameIdToHeadlines < ActiveRecord::Migration
  def change
    add_column :headlines, :game_id, :integer
  end
end
