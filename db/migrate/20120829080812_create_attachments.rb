class CreateAttachments < ActiveRecord::Migration
  def change
    drop_table :attachments
    create_table :attachments do |t|
      t.text :description
      t.string :file
      t.integer :attachable_id
      t.string :attachable_type

      t.timestamps
    end
  end
end
