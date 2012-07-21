class Event < ActiveRecord::Base
  attr_accessible :description, :enddate, :startdate, :title,
    :file_uploads_attributes

  has_many :subscribers, :dependent => :destroy
  has_many :file_uploads, :as => :uploadable
  accepts_nested_attributes_for :file_uploads, :allow_destroy => true, :reject_if => lambda {|a| a[:title].blank? }

  validates :title, :presence => true
end
