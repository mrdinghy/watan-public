class AddColImage1ToPages < ActiveRecord::Migration
  def change
    add_column :pages, :image1, :integer
    add_column :pages, :image2, :integer
    add_column :pages, :image3, :integer
    add_column :pages, :image4, :integer
  end
end
