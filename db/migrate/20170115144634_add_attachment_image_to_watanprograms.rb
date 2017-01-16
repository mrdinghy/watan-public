class AddAttachmentImageToWatanprograms < ActiveRecord::Migration
  def self.up
    change_table :watanprograms do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :watanprograms, :image
  end
end
