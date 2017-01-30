class AddColImagewidthToWatanprograms < ActiveRecord::Migration
  def change
    add_column :watanprograms,  :imagewidth1, :integer
    add_column :watanprograms,  :imagewidth2, :integer
    add_column :watanprograms,  :imagewidth3, :integer
    add_column :watanprograms,  :imagewidth4, :integer
  end
end
