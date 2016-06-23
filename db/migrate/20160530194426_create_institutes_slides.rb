class CreateInstitutesSlides < ActiveRecord::Migration
  def change
    create_table :institutes_slides do |t|
      t.integer :institute_id
      t.integer :slide_id

      t.timestamps null: false
    end
  end
end
