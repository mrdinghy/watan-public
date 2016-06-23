class CreatePixels < ActiveRecord::Migration
  def change
    create_table :pixels do |t|
      t.integer :pixels

      t.timestamps null: false
    end
  end
end
