class AddAttachmentFileToSlides < ActiveRecord::Migration
  def self.up
    change_table :slides do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :slides, :file
  end
end
