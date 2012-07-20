class Event < ActiveRecord::Base
  attr_accessible :description, :enddate, :startdate, :title,
    :attachments_attributes

  has_many :subscribers, :dependent => :destroy
  has_many :attachments, :as => :attachable
  accepts_nested_attributes_for :attachments, :allow_destroy => true, :reject_if => lambda {|a| a[:title].blank? }

  validates :title, :presence => true
end
