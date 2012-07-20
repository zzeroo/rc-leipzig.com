class Attachment < ActiveRecord::Base
  attr_accessible :description, :filename, :path, :title
  belongs_to :attachable, :polymorphic => true
end
