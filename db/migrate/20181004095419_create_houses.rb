class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :mascot
      t.string :head_of_house
      t.string :house_ghost
      t.string :founder
      t.string :values
      t.string :colours
    end
  end
end
