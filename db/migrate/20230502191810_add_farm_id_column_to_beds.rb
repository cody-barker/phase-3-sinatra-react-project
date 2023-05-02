class AddFarmIdColumnToBeds < ActiveRecord::Migration[6.1]
  def change
    add_column :beds, :farm_id, :integer
  end
end
