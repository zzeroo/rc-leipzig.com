class Subscriber < ActiveRecord::Base
  attr_accessible :email, :event_id, :firstname, :grade, :lastname

  belongs_to :event

  validate :firstname, :presence => true
  validate :lastname, :presence => true
end
