class RemoveImgFromDotaHighlight < ActiveRecord::Migration
  def change
    remove_column :dota_highlights, :img, :string
  end
end
