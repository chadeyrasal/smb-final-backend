class AddLikesToBicycle < ActiveRecord::Migration[5.2]
  def change
    add_column :bicycles, :likes, :integer, default: 0
  end
end
