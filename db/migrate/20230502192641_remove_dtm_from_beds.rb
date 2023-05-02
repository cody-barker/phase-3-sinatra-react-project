class RemoveDtmFromBeds < ActiveRecord::Migration[6.1]
  def change
    remove_column :beds, :dtm
  end
end
