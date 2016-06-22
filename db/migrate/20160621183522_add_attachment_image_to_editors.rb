class AddAttachmentImageToEditors < ActiveRecord::Migration
  def self.up
    change_table :editors do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :editors, :image
  end
end
