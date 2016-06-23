class AddColumnsEventsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :event_date, :date
    add_column :posts, :event_time, :time
  end
end
