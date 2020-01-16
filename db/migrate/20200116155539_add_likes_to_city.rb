class AddLikesToCity < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :likes, :integer
  end
end
