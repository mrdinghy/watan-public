class AddColOnHomepageToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :on_homepage, :boolean
  end
end
