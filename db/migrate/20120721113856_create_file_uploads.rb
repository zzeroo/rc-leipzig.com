class CreateFileUploads < ActiveRecord::Migration
  def change
    create_table :file_uploads do |t|
      t.string :title
      t.text :description
      t.string :path
      t.string :filename
      t.integer :uploadable_id
      t.string :uploadable_type

      t.timestamps
    end
  end
end
