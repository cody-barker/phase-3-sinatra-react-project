class RemoveInUseFromBeds < ActiveRecord::Migration[6.1]
  def change
    remove_column :beds, :in_use
  end
end
