class AddColumnIsEventToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :is_event, :boolean
  end
end
