class AddColImagewidthToPages < ActiveRecord::Migration
  def change
    add_column :pages,  :imagewidth1, :integer
    add_column :pages,  :imagewidth2, :integer
    add_column :pages,  :imagewidth3, :integer
    add_column :pages,  :imagewidth4, :integer
  end
end
