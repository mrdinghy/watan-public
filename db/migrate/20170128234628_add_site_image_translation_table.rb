class AddSiteImageTranslationTable < ActiveRecord::Migration
  def change
    reversible do |dir|
      dir.up do
        SiteImage.create_translation_table!({
                                           :caption => :text,
                                           :image_source => :string
                                       }, {
                                           :migrate_data => true,
                                           :remove_source_columns => true
                                       })
      end

      dir.down do
        SiteImage.drop_translation_table! :migrate_data => true
      end
    end
  end
end
