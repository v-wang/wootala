class AddAttachmentImageToBiofeeds < ActiveRecord::Migration
  def self.up
    change_table :biofeeds do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :biofeeds, :image
  end
end
