class AddEncryptedMessageToNote < ActiveRecord::Migration
  def up
    add_column :notes, :message_encrypted, :string
    encrypt_notes
    remove_column :notes, :message, :string
  end

  def encrypt_notes
    Note.all.each do |note|
      note.message = note.read_attribute('message')
      note.save!
    end
  end
end
