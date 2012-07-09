class Event < ActiveRecord::Base
  attr_accessible :description, :enddate, :startdate, :title

  has_many :subscribers, :dependent => :destroy

  validates_associated :subscribers
  
  validates :description, :presence => true

  validates :title, :presence => true
end
