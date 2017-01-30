class AddColImagewidthToPosts < ActiveRecord::Migration
  def change
    add_column :posts,  :imagewidth1, :integer
    add_column :posts,  :imagewidth2, :integer
    add_column :posts,  :imagewidth3, :integer

  end
end
