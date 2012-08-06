class RenameFilenameToFileOnFileUpload < ActiveRecord::Migration
  def up
    change_table :file_uploads do |t|
      t.rename :filename, :file
    end
  end

  def down
    change_table :file_uploads do |t|
      t.rename :file, :filename
    end
  end
end
