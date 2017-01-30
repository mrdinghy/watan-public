class AddColBody2ToWatanprograms < ActiveRecord::Migration
  def change
    reversible do |dir|
      dir.up do
        Watanprogram.add_translation_fields! body2: :text, body3: :text
      end

      dir.down do
        remove_column :Watanprogram_translations, :body2, :body3
      end
    end
  end
end