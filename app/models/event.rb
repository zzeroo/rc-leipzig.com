class Event < ActiveRecord::Base
  attr_accessible :description, :enddate, :startdate, :title

  has_many :subscribers, :dependent => :destroy

  validate :title, :presence => true 
end
