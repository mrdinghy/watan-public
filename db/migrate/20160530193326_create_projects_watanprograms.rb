class CreateProjectsWatanprograms < ActiveRecord::Migration
  def change
    create_table :projects_watanprograms do |t|
      t.integer :watanprogram_id
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
