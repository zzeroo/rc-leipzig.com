class FileUpload < ActiveRecord::Base
  attr_accessible :description, :file, :path, :title, :uploadable_id, :uploadable_type

  belongs_to :uploadable, :polymorphic => true

end
