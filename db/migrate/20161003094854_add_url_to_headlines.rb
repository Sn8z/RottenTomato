class AddUrlToHeadlines < ActiveRecord::Migration
  def change
    add_column :headlines, :url, :string
  end
end
