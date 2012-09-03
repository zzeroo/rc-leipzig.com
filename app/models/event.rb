class Event < ActiveRecord::Base
  attr_accessible :description, :enddate, :startdate, :title, :location, :attachments_attributes

  has_many :subscribers, :dependent => :destroy
  has_many :attachments, :as => :attachable, :dependent => :destroy

  accepts_nested_attributes_for :attachments

  validates :title, :presence => true
  validates :startdate, :presence => true
  validates :enddate, :presence => true

end
