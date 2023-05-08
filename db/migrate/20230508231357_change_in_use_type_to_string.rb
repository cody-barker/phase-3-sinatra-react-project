class ChangeInUseTypeToString < ActiveRecord::Migration[6.1]
  def change
    change_column :beds, :in_use, :string
  end
end
