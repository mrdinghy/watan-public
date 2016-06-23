class AddColumnsEventLocationToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :event_location, :string
    add_column :posts, :event_link, :string
  end
end
