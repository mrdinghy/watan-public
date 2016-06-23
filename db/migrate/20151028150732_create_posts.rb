class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|

      t.date :published_at
      t.integer :post_type
      t.decimal :post_value

      t.timestamps null: false

    end
    Post.create_translation_table! :title => :string, :body => :text
  end
  def down
    drop_table :posts
    Post.drop_translation_table!
  end







end
