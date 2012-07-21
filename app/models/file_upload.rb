class FileUpload < ActiveRecord::Base
  attr_accessible :description, :filename, :path, :title, :uploadable_id, :uploadable_type

  belongs_to :uploadable, :polymorphic => true
end
