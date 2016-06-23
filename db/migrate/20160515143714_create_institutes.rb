class CreateInstitutes < ActiveRecord::Migration
  def up
    create_table :institutes do |t|
      t.timestamps
    end
    Institute.create_translation_table! :name => :string, :description => :text
  end
  def down
    drop_table :institutes
    Institute.drop_translation_table!
  end

end