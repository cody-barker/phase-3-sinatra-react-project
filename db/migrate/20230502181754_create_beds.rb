class CreateBeds < ActiveRecord::Migration[6.1]
  def change
    create_table :beds do |t|
      t.integer :sq_ft
      t.boolean :in_use
      t.string :crop
      t.date :planting_date
      t.date :harvest_date
      t.integer :dtm
      t.timestamps
    end
  end
end
