class AddPublicUrlToAttachments < ActiveRecord::Migration
  def change
    add_column :attachments, :public_url, :string
  end
end
