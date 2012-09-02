class Article < ActiveRecord::Base
  attr_accessible :description, :title, :attachments_attributes

  has_many :attachments, :as => :attachable, :dependent => :destroy

  accepts_nested_attributes_for :attachments
end
