class DropTableAttachments < ActiveRecord::Migration
  def up
    drop_table "attachments"
  end

  def down
    create_table "attachments", :force => true do |t|
      t.string   "title"
      t.text     "description"
      t.string   "filename"
      t.string   "path"
      t.datetime "created_at",      :null => false
      t.datetime "updated_at",      :null => false
      t.integer  "attachable_id"
      t.string   "attachable_type"
    end
  end
end
