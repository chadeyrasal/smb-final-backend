class CreateNeighbourhoods < ActiveRecord::Migration[5.2]
  def change
    create_table :neighourhoods do |t|
      t.string :name
      t.integer :city_id

      t.timestamps
    end
  end
end
