class ChangeFarmLocationToCityAndState < ActiveRecord::Migration[6.1]
  def change
    remove_column :farms, :location
    add_column :farms, :city, :string
    add_column :farms, :state, :string
  end
end
