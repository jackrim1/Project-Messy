class AddAttachmentImageToBarracks < ActiveRecord::Migration
  def self.up
    change_table :barracks do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :barracks, :image
  end
end
