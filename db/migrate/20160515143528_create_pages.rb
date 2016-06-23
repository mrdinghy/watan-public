class CreatePages < ActiveRecord::Migration
  def up
    create_table :pages do |t|
      t.string :title
      t.text :body
      t.boolean :publish
      t.timestamps null: false
    end
    Page.create_translation_table! :title => :string, :body => :text
  end
  def down
    drop_table :pages
    Page.drop_translation_table!
  end
end