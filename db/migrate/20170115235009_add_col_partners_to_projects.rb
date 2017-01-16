class AddColPartnersToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :partners, :string
  end
end
