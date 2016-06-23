class CreateSiteDocuments < ActiveRecord::Migration
  def change
    create_table :site_documents do |t|
      t.string :name
      t.string :documentable_type
      t.integer :documentable_id
      t.timestamps null: false
    end
  end
end
