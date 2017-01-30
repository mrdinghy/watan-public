class AddColCaptionToSiteImages < ActiveRecord::Migration
  def change
    add_column :users, :caption, :text
    add_column :users, :image_source, :string
  end

end