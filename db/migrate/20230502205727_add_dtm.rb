class AddDtm < ActiveRecord::Migration[6.1]
  def change
    add_column :beds, :dtm, :integer
  end
end
