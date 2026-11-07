class AddAttachmentImageToPins < ActiveRecord::Migration[7.0]

  def self.up
    add_attachment :pins, :image
  end

  def self.down
    remove_attachment :pins, :image
  end
end
