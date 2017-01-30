class AddColImage1ToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :image1, :integer
    add_column :posts, :image2, :integer
    add_column :posts, :image3, :integer

  end
end
