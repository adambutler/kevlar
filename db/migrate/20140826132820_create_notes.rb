class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :message
      t.integer :reads_remaining
      t.string :uuid

      t.timestamps
    end
  end
end
