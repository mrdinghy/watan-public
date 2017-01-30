class AddColBody2ToPosts < ActiveRecord::Migration
  def change
    reversible do |dir|
      dir.up do
        Post.add_translation_fields! body2: :text
      end

      dir.down do
        remove_column :post_translations, :body2
      end
    end
  end
end