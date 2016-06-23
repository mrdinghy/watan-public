class CreateMembers < ActiveRecord::Migration
  def up
    create_table :members do |t|
      t.string :member_email
      t.boolean :member_status
      t.datetime :membership_date
      t.integer :membershiptype_id
      t.timestamps
    end
    Member.create_translation_table! :name => :string
  end
  def down
    drop_table :members
    Member.drop_translation_table!
  end

end