class AddAttachmentDocumentTohomeworks < ActiveRecord::Migration[5.2]
  def self.up
    change_table :homeworks do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :homeworks, :document
  end
end
