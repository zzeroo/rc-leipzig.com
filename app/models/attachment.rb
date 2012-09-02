class Attachment < ActiveRecord::Base
  attr_accessible :description, :file, :attachable_id, :attachable_type

  belongs_to :attachable, :polymorphic => true

  mount_uploader :file, FileUploader

end
