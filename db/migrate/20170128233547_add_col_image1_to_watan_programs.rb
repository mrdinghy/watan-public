class AddColImage1ToWatanprograms < ActiveRecord::Migration
  def change
    add_column :watanprograms, :image1, :integer
    add_column :watanprograms, :image2, :integer
    add_column :watanprograms, :image3, :integer
    add_column :watanprograms, :image4, :integer

  end
end
