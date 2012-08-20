class Event < ActiveRecord::Base
  require 'net/ftp'

  attr_accessible :description, :enddate, :startdate, :title, :location,
    :file_uploads_attributes

  has_many :subscribers, :dependent => :destroy
  has_many :file_uploads, :as => :uploadable, :dependent => :destroy
  accepts_nested_attributes_for :file_uploads, :allow_destroy => true, :reject_if => lambda { |a| a[:file].blank? }

  validates :title, :presence => true
  validates :startdate, :presence => true
  validates :enddate, :presence => true


end
