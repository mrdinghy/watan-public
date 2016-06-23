class CreateInstitutesProjects < ActiveRecord::Migration
  def change
    create_table :institutes_projects do |t|
      t.integer :institute_id
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
