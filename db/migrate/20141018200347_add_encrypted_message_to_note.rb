class AddEncryptedMessageToNote < ActiveRecord::Migration
  def up
    add_column :notes, :message_encrypted, :string
    Note.all.each do |note|
      note.message = note.read_attribute('message')
      note.save!
    end
  end
end
