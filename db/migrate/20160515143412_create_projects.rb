class CreateProjects < ActiveRecord::Migration
  def up
    create_table :projects do |t|
      t.integer :institute_id
      t.date :start_date
      t.date :end_date
      t.boolean :publish
      t.integer :projectstatus_id
      t.integer :priority_id
      t.integer :assigned_to
      t.integer :country_id
      t.timestamps null: false
    end
    Project.create_translation_table! :name => :string, :description => :text
  end
  def down
    drop_table :projects
    Project.drop_translation_table!
  end
end



