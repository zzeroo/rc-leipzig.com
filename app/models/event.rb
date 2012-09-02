class Event < ActiveRecord::Base
  require 'net/ftp'

  attr_accessible :description, :enddate, :startdate, :title, :location

  has_many :subscribers, :dependent => :destroy

  validates :title, :presence => true
  validates :startdate, :presence => true
  validates :enddate, :presence => true

end
