class AddColLocationsToWatanprograms < ActiveRecord::Migration

    reversible do |dir|
      dir.up do
        Watanprogram.add_translation_fields! locations: :text
      end

      dir.down do
        remove_column :watanprogram_translations, :locations
      end
    end
  end
