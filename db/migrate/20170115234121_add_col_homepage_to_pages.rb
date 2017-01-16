class AddColHomepageToPages < ActiveRecord::Migration
  def change
    add_column :pages, :homepage, :boolean
  end
end
