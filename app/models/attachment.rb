class Attachment < ActiveRecord::Base
  attr_accessible :description, :filename, :path, :title
end
