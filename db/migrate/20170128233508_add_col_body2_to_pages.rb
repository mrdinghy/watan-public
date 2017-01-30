class AddColBody2ToPages < ActiveRecord::Migration

  def change
    reversible do |dir|
      dir.up do
        Page.add_translation_fields! body2: :text, body3: :text
      end

      dir.down do
        remove_column :page_translations, :body2, :body3
      end
    end
  end
end