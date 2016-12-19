class AddBestOfToMatch < ActiveRecord::Migration
  def change
    add_column :matches, :best_of, :integer
  end
end
