class CreateWatanprograms < ActiveRecord::Migration
  def up
    create_table :watanprograms do |t|
      t.timestamps
    end
    Watanprogram.create_translation_table! :name => :string
  end
  def down
    drop_table :watanprograms
    Watanprogram.drop_translation_table!
  end
end