class CreateInstitutesPosts < ActiveRecord::Migration
  def change
    create_table :institutes_posts do |t|
      t.integer :institute_id
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
