class CreateFarms < ActiveRecord::Migration[6.1]
  def change 
      create_table :farms do |t|
      t.string :name
      t.string :location
      t.timestamps
    end
  end
end